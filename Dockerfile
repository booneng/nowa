FROM golang:1.14 AS builder

WORKDIR /src

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server_binary internal/server/nowaserver.go

FROM alpine:latest  

RUN apk --no-cache add ca-certificates

WORKDIR /root

COPY --from=builder /src/server_binary .

CMD ["./server_binary"]
