FROM golang:alpine
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o myImage
ENTRYPOINT ["/app/myImage"]
