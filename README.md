Simple usage example of gRPC & protobuffer for the Go programming language.

## Run the server locally
You can use the the **.server/run.sh** script.
By default, your server will run on port `50051` but you can change that
using the *--port* flag.
```
$ ./server/run.sh
```

## Run the client locally
You can use the **./client/run.sh** script to run the client.

```
$ ./client/run.sh --name=Florin
```

It will try to reach `localhost:50051` by default.

