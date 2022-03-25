include .env

BINARY_NAME=$(shell basename "$(PWD)")

migrate:
	migrate -path ./migrations -database ${GREENLIGHT_DB_DSN} up

build:
	echo "Compiling for every OS and Platform"
	GOARCH=amd64 GOOS=darwin go build -o ./bin/${BINARY_NAME}-darwin ./cmd/api
	GOARCH=amd64 GOOS=linux go build -o ./bin/${BINARY_NAME}-linux ./cmd/api
	GOARCH=amd64 GOOS=windows go build -o ./bin/${BINARY_NAME}-windows ./cmd/api

clean:
	go clean
	rm ./bin/${BINARY_NAME}-darwin
	rm ./bin/${BINARY_NAME}-linux
	rm ./bin/${BINARY_NAME}-windows

test:
	go test ./...

test_coverage:
	go test ./... -coverprofile=coverage.out

dep:
	go mod download

vet:
	go vet ./...

lint:
	golangcli-lint run ./... --enable-all
