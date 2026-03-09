package main

import (
    "time"
    "github.com/gofiber/fiber/v3"
)

type Response struct{
    Message    string  `json:"message"`
    Timestamp  int64   `json:"timestamp"` 
    Fact       string  `json:"fact"` 
}

func main() {
    app := fiber.New()

    app.Get("/", func(c fiber.Ctx) error {
        response := Response{
            Message: "My name is Lauren",
            Timestamp: time.Now().UnixMilli(),
            Fact: "I love automation",
        }
        return c.JSON(response)
    })

    app.Listen(":3000")
}