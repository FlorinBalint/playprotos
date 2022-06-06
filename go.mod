module github.com/FlorinBalint/playprotos

go 1.18

require (
	google.golang.org/grpc v1.47.0
	google.golang.org/protobuf v1.28.0
)

require (
	github.com/golang/protobuf v1.5.2 // indirect
	golang.org/x/net v0.0.0-20201021035429-f5854403a974 // indirect
	golang.org/x/sys v0.0.0-20210119212857-b64e53b001e4 // indirect
	golang.org/x/text v0.3.3 // indirect
	google.golang.org/genproto v0.0.0-20200806141610-86f49bd18e98 // indirect
)

require github.com/FlorinBalint/playprotos/helloworld v0.1.0

replace github.com/FlorinBalint/playprotos/helloworld => ./build/src/proto/helloworld
