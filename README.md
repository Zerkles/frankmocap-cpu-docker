## How to run project:

1. Download model files from internet and put them into *installation_image/smpl/\*files**
2. Install application with docker by running *install_on_docker.sh*
3. Run application container on docker by using *run_on_docker.sh*
4. Run application in docker container terminal, for example: 
"xvfb-run -a python3 -m demo.demo_bodymocap --input_path ./sample_data/han_short.mp4 --out_dir ./mocap_output"

## Description:

Installation script pulls and installs frankmocap-cpu application in the docker container, and after that copies files
to local */app* directory. This step is required because some users might use different OS than ubuntu.

The second script is mounting local directory with application with remote app directory for easier development.

## References:

* https://github.com/NickVeld/frankmocap/tree/cpu-support
* https://github.com/facebookresearch/frankmocap
