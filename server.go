package main

import (
	"context"
	"log"
	"net"

	pb "github.com/booneng/nowa/protos"

	"google.golang.org/grpc"
)

const (
	port = ":50051"
)

// server is used to implement helloworld.GreeterServer.
type server struct {
	pb.UnimplementedNowaServer
}

// SayHello implements helloworld.GreeterServer
func (s *server) GetRestaurant(ctx context.Context, in *pb.GetRestaurantRequest) (*pb.GetRestaurantResponse, error) {
	log.Printf("Received: %v", in.GetRestaurantId())
	return &pb.GetRestaurantResponse{Restaurant: &pb.Restaurant{RestaurantId: in.GetRestaurantId(), Name: "mcd"}}, nil
}

func main() {
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
