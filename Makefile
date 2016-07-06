BUILD=`date +%FT%T%z`
NAME=serverless-hello
LDFLAGS=-ldflags "-X main.Version=${VERSION} -X main.Build=${BUILD}"
VERSION=0.1.0

default:
	GOOS=linux GOARCH=amd64 go build ${LDFLAGS}

install:
	go install ${LDFLAGS}

clean:
	go clean
	rm -f *.log
	docker rmi -f donbstringham/${NAME}

dockerize:
	docker build -t donbstringham/${NAME} .

fmt:
	go fmt ./...

get:
	go get ./...