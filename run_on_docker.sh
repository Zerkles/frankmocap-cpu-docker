#!/bin/bash

if [[ ! -d "app/" ]]
then
    # Section below downloads and installs base frankmocap version
    git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git app
    cd app
    chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh
    cd ..
fi

# Building docker image with all required components
docker build base_build -t frankmocap-cpu-docker-base:latest
docker run --mount type=bind,source="$(pwd)"/app,target=/opt/app -it frankmocap-cpu-docker-base:latest
