#!/bin/bash

# Building docker image with all required components
docker build base-build/ -t frankmocap-cpu-docker-base:latest

# Building actual docker image with application
docker build remote-build -t frankmocap-cpu-docker-remote:latest
docker run -it frankmocap-cpu-docker-remote:latest