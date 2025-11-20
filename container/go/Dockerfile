#first stage - builder
FROM golang:1.22-bookworm as builder
WORKDIR /dir
COPY app.go go.mod go.sum ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

#second stage
FROM debian:bookworm-slim
WORKDIR /app/
COPY --from=builder /dir/app .

ENV APP_PORT=6000
EXPOSE $APP_PORT


CMD ["./app"]
