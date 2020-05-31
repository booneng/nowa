FROM booneng/nowaproto:latest as builder

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server_binary server/server.go



FROM alpine:latest  

RUN apk --no-cache add ca-certificates

WORKDIR /root

COPY --from=builder /src/server_binary .

CMD ["./server_binary"]
