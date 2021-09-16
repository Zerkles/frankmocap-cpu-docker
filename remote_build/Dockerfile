FROM frankmocap-cpu-docker-base

RUN apt install -y git

RUN git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git /opt/app2
RUN mv -v /opt/app2/* /opt/app/ && rm -r /opt/app2

WORKDIR /opt/app
RUN chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh

CMD xvfb-run -a python3 -m demo.demo_bodymocap --input_path ./sample_data/han_short.mp4 --out_dir ./mocap_output --renderer_type opengl
