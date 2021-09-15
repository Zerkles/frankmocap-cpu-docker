FROM frankmocap-cpu-docker-base

WORKDIR /opt/app/
COPY app/ .

CMD xvfb-run -a python3 -m demo.demo_bodymocap --input_path ./sample_data/han_short.mp4 --out_dir ./mocap_output --renderer_type opengl
