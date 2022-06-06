# This must be the first line in Makefile.common
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

BUILD=${mkfile_dir}build
GOBIN=${BUILD}/bin
GOPROTO=${BUILD}/src/proto
GO_PROTO_MODULE="github.com/FlorinBalint/playprotos/helloworld"

.PHONY: go_protos build_server run_server build_and_run_server

${GOPROTO}/helloworld:
	mkdir -p ${GOPROTO}/helloworld

${GOPROTO}/helloworld/go.mod: ${GOPROTO}/helloworld
		cd ${GOPROTO}/helloworld && go mod init ${GO_PROTO_MODULE} && cd -

go_protos:
		protoc -I=${mkfile_dir}proto  --go_out=${GOPROTO}/helloworld --go_opt=paths=source_relative \
    	--go-grpc_out=${GOPROTO}/helloworld --go-grpc_opt=paths=source_relative \
    	${mkfile_dir}proto/helloworld.proto

clean:
	rm -rf ${BUILD}
