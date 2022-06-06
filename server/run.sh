#! /bin/sh

# rebuild if necessary
make build

project_root=$(dirname $(dirname $(realpath $0 )))
# run prog with some arguments
${project_root}/build/bin/helloworld_server "$@"