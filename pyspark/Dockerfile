FROM andylsr/devtools2022:jupyterlab

RUN apt-get update && apt-get install -y libkrb5-dev && apt-get clean && \
    python3 -m pip install --no-cache-dir sparkmagic -i https://mirrors.aliyun.com/pypi/simple/ && \
    jupyter nbextension enable --py --sys-prefix widgetsnbextension && \
    jupyter labextension install "@jupyter-widgets/jupyterlab-manager" && \
    cd $(pip show sparkmagic | awk '{ if(/Location/){print} }' | awk '{ print $2 }') && \
    jupyter-kernelspec install sparkmagic/kernels/sparkkernel && \
    jupyter-kernelspec install sparkmagic/kernels/pysparkkernel && \
    jupyter-kernelspec install sparkmagic/kernels/sparkrkernel && \
    jupyter serverextension enable --py sparkmagic

VOLUME ["/root/.sparkmagic/"]
