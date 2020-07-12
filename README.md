# Nowa gRPC service

To startup a development server, run

```shell
$ docker-compose -f docker/docker-compose.yml up
```

Now you can start making requests to the server.

## Making requests to the server

### grpc_cli

Follow this guide to install grpc_cli: https://grpc.github.io/grpc/core/md_doc_command_line_tool.html

Make a call to the server

```shell
$ grpc_cli call localhost:50051 GetRestaurant "restaurant_id: 1"
```


