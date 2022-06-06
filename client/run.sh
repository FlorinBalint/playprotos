#! /bin/sh

# rebuild if necessary
make build
# run prog with some arguments
project_root=$(dirname $(dirname $(realpath $0 )))
${project_root}/build/bin/helloworld_client "$@"
