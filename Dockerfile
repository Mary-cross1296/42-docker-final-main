FROM --platform=linux/amd64 golang:1.21.0

WORKDIR /usr/src/app

COPY . .

RUN go mod download && go mod tidy && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o my_app

CMD ["/usr/src/app/my_app"]