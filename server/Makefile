include ../Makefile

BINARY=helloworld_server

.PHONY: run build

build: ${GOPROTO}/helloworld/go.mod go_protos
	go build ${LDFLAGS} -o ${GOBIN}/${BINARY} main.go
 	
run: build
	${GOBIN}/${BINARY} $@
