FROM golang:1.14 AS builder

WORKDIR /src

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o client_binary client/client.go

FROM alpine:latest  

RUN apk --no-cache add ca-certificates

WORKDIR /root

COPY --from=builder /src/client_binary .

CMD ["./client_binary"]
