package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"os"

	pb "github.com/booneng/nowa/protos"
	"github.com/jackc/pgx/v4"

	"google.golang.org/grpc"
)

const (
	port   = ":50051"
	db_url = "postgres://nowauser:secretpassword@127.0.0.1:5432/nowa"
)

func StartSql() {
	var err error
	conn, err := pgx.Connect(context.Background(), db_url)

	defer conn.Close(context.Background())

	if err != nil {
		log.Fatalf("failed to open DB: %v", err)
	}
}

type server struct {
	pb.UnimplementedNowaServer
}

func (s *server) GetRestaurant(ctx context.Context, in *pb.GetRestaurantRequest) (*pb.GetRestaurantResponse, error) {
	log.Printf("Received: %v", in.GetRestaurantId())
	conn, err := pgx.Connect(context.Background(), db_url)
	defer conn.Close(context.Background())
	var restaurant_id int32
	var restaurant_name string
	err = conn.QueryRow(context.Background(), "SELECT restaurant_id, restaurant_name FROM RestaurantsTable WHERE restaurant_id = $1", in.GetRestaurantId()).Scan(&restaurant_id, &restaurant_name)
	if err != nil {
		fmt.Fprintf(os.Stderr, "QueryRow failed: %v\n", err)
		os.Exit(1)
	}
	return &pb.GetRestaurantResponse{Restaurant: &pb.Restaurant{RestaurantId: restaurant_id, Name: restaurant_name}}, nil
}

func main() {
	StartSql()
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
