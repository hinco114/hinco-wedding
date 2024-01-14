#!/bin/bash

# check if tag is set
if [ -z "$1" ]
  then
    echo "No tags, please set a tag by argument"
    exit 1
fi

TAG=$1

docker buildx build -t ghcr.io/hinco114/hinco-wedding:$TAG -t ghcr.io/hinco114/hinco-wedding:LATEST --platform linux/amd64,linux/arm64,linux/arm/v7 . --push
