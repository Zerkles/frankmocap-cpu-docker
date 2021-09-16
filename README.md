## How to run project:

1. Download model files and put them into *base_build/smpl/*
2. Run one of the three available scripts

## Description:

There are three ways to run the project:

* recommended way - via running *run_on_docker.sh*
* alternative way - via running *run_install_on_docker.sh*
* alternative way 2 - via running *run_local.sh*

The difference between *run_on_docker.sh* and *run_install_on_docker.sh*, is that the recommended one clones frankmocap
repository to local directory, installs whole project and the copies it to the docker, so there is no need to download
and install all the files everytime you want to run a project. Alternative one downloads and installs frankmocap
directly in the docker container, so it takes much longer to run this one.

Script *run_local.sh* is a script for ubuntu OS, which installs all needed components and projecy and then runs it on
the local machine.

## References:

* https://github.com/NickVeld/frankmocap/tree/cpu-support
* https://github.com/facebookresearch/frankmocap
