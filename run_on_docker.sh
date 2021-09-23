#!/bin/bash

# Building base image
docker build base_image -t frankmocap-cpu-docker:latest

# Mounting local directory to docker and running conatiner
docker run --rm --mount type=bind,source="$(pwd)"/app,target=/opt/app -it frankmocap-cpu-docker:latest
