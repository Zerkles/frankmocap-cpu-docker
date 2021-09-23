FROM frankmocap-cpu-docker

RUN git clone -b cpu-support --single-branch https://github.com/NickVeld/frankmocap.git /opt/app2
RUN mv -v /opt/app2/* /opt/app/ && rm -r /opt/app2

WORKDIR /opt/app
COPY smpl extra_data/smpl/
RUN chmod +x scripts/install_frankmocap.sh && sh scripts/install_frankmocap.sh
#RUN python3 -c "from bodymocap.models import hmr; import torch; " \
#               "hmr('./extra_data/body_module/data_from_spin/smpl_mean_params.npz').to(torch.device('cpu'))"