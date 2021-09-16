#!/bin/bash

# Install basic packages
sudo apt install -y libglib2.0-0 \
    python3 \
    python3-pip \
    xvfb \
    freeglut3-dev \
    wget \
    ffmpeg

#Install python modules
pip install -r base_build/requirements.txt

# If app doesn't exist, download and install frankmocap
if [[ ! -d "app/" ]]
then
    git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git app
    cd app
    chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh
    cp -r ../base_build/smpl extra_data/
    cd ..
fi

# Run application
cd app
xvfb-run -a python3 -m demo.demo_bodymocap --input_path ./sample_data/han_short.mp4 --out_dir ./mocap_output --renderer_type opengl
