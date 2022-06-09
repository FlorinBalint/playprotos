include ../Makefile

BINARY=helloworld_server

.PHONY: build run

build: ${GOPROTO}/helloworld/go.mod go_protos
	go build ${LDFLAGS} -o ${GOBIN}/${BINARY} main.go

# Use run.sh instead to pass CLI arguments.
run: build
	${GOBIN}/${BINARY} $@
