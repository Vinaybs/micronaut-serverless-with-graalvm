#!/bin/bash
docker build . -t micronaut-serverless-with-graalvm
mkdir -p build
docker run --rm --entrypoint cat micronaut-serverless-with-graalvm  /home/application/function.zip > build/function.zip
