
GOPATH=${HOME}/go:/usr/share/gocode
APP=myfiberapp1

build:
	go build -v .
init:
	go mod init ${APP}/v2
	go mod tidy
clean:
	rm -f ${APP}
	go clean
run:
	./${APP}

