FROM ubuntu:20.04

RUN apt update
RUN apt install -y libglib2.0-0
RUN apt install -y python3 \
    python3-pip \
    xvfb \
    freeglut3-dev \
    wget \
    ffmpeg \
    git

WORKDIR /opt/app/

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache
