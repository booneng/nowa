package main

import (
	"context"
	"log"

	pb "github.com/booneng/nowa/protos"

	"google.golang.org/grpc"
)

func main() {
	var conn *grpc.ClientConn
	conn, err := grpc.Dial("localhost:50051", grpc.WithInsecure())
	if err != nil {
		log.Fatalf("could not connect %s", err)
	}
	defer conn.Close()

	nowa := pb.NewNowaClient(conn)

	req := pb.GetRestaurantRequest{RestaurantId: 1}

	res, err := nowa.GetRestaurant(context.Background(), &req)

	if err != nil {
		log.Fatalf("Error when calling GetRestaurant %s", err)
	}

	log.Printf("Response from server: %s", res.Restaurant.Name)
}
