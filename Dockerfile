FROM golang:1.25-alpine AS builder
WORKDIR /Web-App

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -o app .

FROM alpine:3.23
WORKDIR /app
COPY --from=builder /Web-App/app ./app

EXPOSE 3000

CMD ["./app"]
