# Liatrio Apprenticeship Project

I Built a REST API endpoint using Go and the Fiber framework.  The application was containerized with Docker, automated using GitHub Actions, and deployed to the AWS App Runner via Amazon ECR.

## Run Locally
go run main.go

## Run with Docker
docker build -t liatrio-app .
docker run --rm -p 3000:3000 liatrio-app

## Deployment
Docker image is pushed to Amazon ECR.
AWS App Runner deploys the image automatically.