package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"os"

	pb "github.com/booneng/nowa/server/proto"
	"github.com/jackc/pgx/v4"
	"github.com/jackc/pgx/v4/pgxpool"

	"google.golang.org/grpc"
)

const (
	port = ":50051"
)

var pool *pgxpool.Pool

type server struct {
	pb.UnimplementedNowaServer
}

func (s *server) GetRestaurant(ctx context.Context, in *pb.GetRestaurantRequest) (*pb.GetRestaurantResponse, error) {
	log.Printf("Received: %v", in.GetRestaurantId())
	conn, err := pool.Acquire(ctx)
	if err != nil {
		fmt.Printf("Unable to open connection: %v\n", err)
		return nil, nil
	}
	defer conn.Release()
	var restaurant_id int32
	var restaurant_name string
	err = conn.QueryRow(
		ctx,
		"SELECT restaurant_id, restaurant_name FROM RestaurantsTable WHERE restaurant_id = $1",
		in.GetRestaurantId(),
	).Scan(&restaurant_id, &restaurant_name)
	if err != nil {
		fmt.Printf("Unable to open connection: %v\n", err)
		return nil, nil
	}
	var rows pgx.Rows
	rows, err = conn.Query(
		ctx,
		"SELECT item_id, item_name, item_description FROM MenuItemsTable WHERE restaurant_id = $1",
		in.GetRestaurantId(),
	)
	if err != nil {
		fmt.Printf("Failed to get menu items: %v\n", err)
		return nil, nil
	}
	defer rows.Close()
	var menu_items []*pb.MenuItem
	for rows.Next() {
		var item_id int64
		var item_name, item_description string
		err = rows.Scan(&item_id, &item_name, &item_description)
		if err != nil {
			fmt.Printf("Failed to scan row: %v\n", err)
			continue
		}
		menu_items = append(
			menu_items,
			&pb.MenuItem{ItemId: item_id, Name: item_name, Description: item_description},
		)
	}
	response := pb.GetRestaurantResponse{
		Restaurant: &pb.Restaurant{RestaurantId: restaurant_id, Name: restaurant_name, MenuItems: menu_items},
	}
	return &response, nil
}

func main() {
	var err error
	for {
		pool, err = pgxpool.Connect(context.Background(), os.Getenv("DATABASE_URL"))
		if err != nil {
			fmt.Printf("Failed to connect to db: %v\n", err)
			continue
		}
		fmt.Println("Connected to db")
		break
	}
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
