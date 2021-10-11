FROM frankmocap-cpu-docker

RUN git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git /opt/app2
RUN mv -v /opt/app2/* /opt/app/ && rm -r /opt/app2

WORKDIR /opt/app
COPY smpl extra_data/smpl/
COPY socket_module .
RUN chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh