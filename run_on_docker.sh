#!/bin/bash

# Building base image
docker build base_image -t frankmocap-cpu-docker:latest

# Mounting local directory to docker and running container
docker run -p 8052:8052 --rm --mount type=bind,source="$(pwd)"/app,target=/opt/app -it frankmocap-cpu-docker:latest \
python3 socket_module/SocketServer.py
