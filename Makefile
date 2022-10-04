
GOPATH=${HOME}/go:/usr/share/gocode
APP=myfiberapp1

build: build-linux build-darwin build-windows

build-linux: build-linux-386 build-linux-amd64
build-darwin: build-darwin-386 build-darwin-amd64
build-windows: build-windows-386 build-windows-amd64
build-linux-386:
	GOOS=linux GOARCH=386 go build -v .
	mv ${APP} ${APP}-linux-386
build-linux-amd64:
	GOOS=linux GOARCH=amd64 go build -v .
	mv ${APP} ${APP}-linux-amd64
build-windows-386:
	GOOS=windows GOARCH=386 go build -v .
	mv ${APP}.exe ${APP}-386.exe
build-windows-amd64:
	GOOS=windows GOARCH=amd64 go build -v .
	mv ${APP}.exe ${APP}-amd64.exe

build-darwin-386:
	GOOS=darwin GOARCH=386 go build -v .
	mv ${APP} ${APP}-darwin-386
build-darwin-amd64:
	GOOS=darwin GOARCH=amd64 go build -v .
	mv ${APP} ${APP}-darwin-amd64
init:
	go mod init ${APP}/v2
	go mod tidy
clean:
	rm -f ${APP}-386.exe ${APP}-amd64.exe 
	rm -f ${APP}-darwin-386 ${APP}-darwin-amd64 
	rm -f ${APP}-linux-386 ${APP}-linux-amd64
	go clean
run:
	./${APP}

