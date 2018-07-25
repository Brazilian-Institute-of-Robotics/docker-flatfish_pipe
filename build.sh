#!/bin/bash

. settings.sh

docker build -t flatfish_pipe .

envsubst < Dockerfile.isolated > .Dockerfile.tmp
docker build -t flatfish_pipe:isolated \
                  -f .Dockerfile.tmp .

rm -rf .Dockerfile.tmp

