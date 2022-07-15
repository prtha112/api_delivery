test:
	echo "hello test"
	go test -v --run TestDeletePost
	go test -v ./...

build:
	go mod download
	GOARCH=amd64
	go build -o /go/bin/app

build-docker:
	docker build -t api_delivery -f Dockerfile .

run:
	rm -f ./main
	go run main.go
