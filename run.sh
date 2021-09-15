#!/bin/bash

# Building docker image with all required components
docker build base-build -t frankmocap-cpu-docker-base:latest

if [[ ! -d "app/" ]]
then
    # Section below downloads and installs base frankmocap version
    git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git app
    cd app
    chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh
    cd ..
fi

# Building actual docker image with application
docker build . -t frankmocap-cpu-docker:latest
docker run -it frankmocap-cpu-docker:latest