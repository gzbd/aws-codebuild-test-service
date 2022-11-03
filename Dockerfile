FROM golang:1.19

WORKDIR /app

COPY go.mod  ./
COPY main.go ./


RUN go mod download

RUN go build -v -o ./app ./...

CMD ["./app"]
