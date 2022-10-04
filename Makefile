GOPATH=${HOME}/go:/usr/share/gocode
APP=myfiberapp1

build:
	GOOS=darwin GOARCH=amd64 go build -o ${APP}-darwin-amd64
	GOOS=linux GOARCH=386 go build -o ${APP}-linux-386
	GOOS=linux GOARCH=amd64 go build -o ${APP}-linux-amd64
	GOOS=windows GOARCH=386 go build -o ${APP}-windows-386.exe
	GOOS=windows GOARCH=amd64 go build -o ${APP}-windows-amd64.exe
build-disabled:
	GOOS=android GOARCH=arm go build -o ${APP}-android-arm
	GOOS=darwin GOARCH=386 go build -o ${APP}-darwin-386
	GOOS=darwin GOARCH=arm go build -o ${APP}-darwin-arm
	GOOS=darwin GOARCH=arm64 go build -o ${APP}-darwin-arm64
	GOOS=plan9 GOARCH=386 go build -o ${APP}-plan9-386
	GOOS=plan9 GOARCH=amd64 go build -o ${APP}-plan9-amd64
	GOOS=solaris GOARCH=amd64 go build -o ${APP}-solaris-amd64
build-more:
	GOOS=dragonfly GOARCH=amd64 go build -o ${APP}-dragonfly-amd64
	GOOS=freebsd GOARCH=386 go build -o ${APP}-freebsd-386
	GOOS=freebsd GOARCH=amd64 go build -o ${APP}-freebsd-amd64
	GOOS=freebsd GOARCH=arm go build -o ${APP}-freebsd-arm
	GOOS=linux GOARCH=arm go build -o ${APP}-linux-arm
	GOOS=linux GOARCH=arm64 go build -o ${APP}-linux-arm64
	GOOS=linux GOARCH=ppc64 go build -o ${APP}-linux-ppc64
	GOOS=linux GOARCH=ppc64le go build -o ${APP}-linux-ppc64le
	GOOS=linux GOARCH=mips go build -o ${APP}-linux-mips
	GOOS=linux GOARCH=mipsle go build -o ${APP}-linux-mipsle
	GOOS=linux GOARCH=mips64 go build -o ${APP}-linux-mips64
	GOOS=linux GOARCH=mips64le go build -o ${APP}-linux-mips64le
	GOOS=netbsd GOARCH=386 go build -o ${APP}-netbsd-386
	GOOS=netbsd GOARCH=amd64 go build -o ${APP}-netbsd-amd64
	GOOS=netbsd GOARCH=arm go build -o ${APP}-netbsd-arm
	GOOS=openbsd GOARCH=386 go build -o ${APP}-openbsd-386
	GOOS=openbsd GOARCH=amd64 go build -o ${APP}-openbsd-amd64
	GOOS=openbsd GOARCH=arm go build -o ${APP}-openbsd-arm
init:
	go mod init ${APP}/v2
	go mod tidy
run:
	./${APP}
