#!/bin/bash
#
# Creates a Docker image with tag version
# Optionally push it to the public hub registry
#

version=$1

[ -z $version ] && echo "You must pass version argument" && exit 1

docker build -t innotech/consul:$version .

# push?
# docker push innotech/consul
