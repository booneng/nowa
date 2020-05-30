package main

import (
	"context"
	"database/sql"
	"fmt"
	"log"
	"net"

	pb "github.com/booneng/nowa/protos"
	_ "github.com/go-sql-driver/mysql"

	"google.golang.org/grpc"
)

var pool *sql.DB

const (
	port = ":50051"
)

func StartSql() {
	var err error
	pool, err = sql.Open("mysql", "root:@/nowa")
	if err != nil {
		log.Fatalf("failed to open DB: %v", err)
	}
}

type server struct {
	pb.UnimplementedNowaServer
}

func InsertData() {
	query := "INSERT INTO RestaurantsTable (RestaurantId, Name) VALUES (1, \"hello\")"
	res, err := pool.Exec(query)
	log.Println(query)
	log.Printf("error %v", err)
	log.Printf("Test %v", res)
}

func (s *server) GetRestaurant(ctx context.Context, in *pb.GetRestaurantRequest) (*pb.GetRestaurantResponse, error) {
	log.Printf("Received: %v", in.GetRestaurantId())
	query := fmt.Sprintf("SELECT * FROM RestaurantsTable WHERE RestaurantId = %d", in.GetRestaurantId())
	row, err := pool.Query(query)
	log.Printf("query err %v", err)
	log.Println(row)
	return &pb.GetRestaurantResponse{Restaurant: &pb.Restaurant{RestaurantId: in.GetRestaurantId(), Name: "mcd"}}, nil
}

func main() {
	StartSql()
	InsertData()
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pb.RegisterNowaServer(s, &server{})
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
