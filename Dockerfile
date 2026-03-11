FROM golang:1.25-alpine AS builder
WORKDIR /Web-App

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ARG COMMIT_SHA
RUN go build -ldflags="-X main.Commit=$COMMIT_SHA" -o app .

FROM alpine:3.23
WORKDIR /app
COPY --from=builder /Web-App/app ./app

EXPOSE 3000

CMD ["./app"]
