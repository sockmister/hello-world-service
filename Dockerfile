FROM golang:1.14rc1-alpine

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN go build -o hello-world-service .

ENTRYPOINT ["/app/hello-world-service"]

