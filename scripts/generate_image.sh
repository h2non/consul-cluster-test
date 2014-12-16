#!/bin/bash

version=$1

[ -z $version ] && echo "You must pass version argument" && exit 1

docker build -t innotech/hydra-acceptance-base:$version .