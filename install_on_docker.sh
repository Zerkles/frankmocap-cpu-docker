#!/bin/bash

if [[ -d "./app" ]]
then
    rm -r app
fi

# Building images
docker build base_image -t frankmocap-cpu-docker:latest
docker build installation_image -t frankmocap-cpu-docker-installation:latest

# Run installation image
docker run --rm --name frankmocap_installation_container -d -t frankmocap-cpu-docker-installation:latest

# Copy installed project
docker cp frankmocap_installation_container:/opt/app ./

# Stop installation container
docker stop frankmocap_installation_container