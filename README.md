## How to run project:

1. Download model files and put them into *base-build/smpl/* 
2. Run one of the two available scripts

## Description:

There are two ways to run the project:

* default way - via running *run.sh* script
* alternative way - via running *run-remote-build.sh* script

The difference between them is, that the default one clones frankmocap repository to local directory, installs whole
project and the copies it to the docker, so there is no need to download and install all the files everytime you want to
run a project.

Alternative one downloads and installs frankmocap directly in the docker container, so it takes much longer to run this
one.

## References:

* https://github.com/NickVeld/frankmocap/tree/cpu-support
* https://github.com/facebookresearch/frankmocap
