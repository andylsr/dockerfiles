FROM ubuntu:20.04
USER root

ENV PATH=$PATH:/opt/node-v16.13.0-linux-x64/bin/

RUN sed -i 's/deb http:\/\/security/# deb http:\/\/security/g' /etc/apt/sources.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y wget vim curl git python3 python3-pip openjdk-11-jdk && \
    apt-get clean && \
    ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    cd /opt/ && wget https://nodejs.org/dist/v16.13.0/node-v16.13.0-linux-x64.tar.xz && \
    xz -d node-v16.13.0-linux-x64.tar.xz && tar xf node-v16.13.0-linux-x64.tar && rm node-v16.13.0-linux-x64.tar && \
    pip3 install --no-cache-dir jupyter jupyterlab jupyterhub jupyterlab-language-pack-zh-CN && \
    curl -Lo coursier https://git.io/coursier-cli && \
    chmod +x coursier && \
    ./coursier launch --fork almond:0.11.0 --scala 2.13.4 -- --install

VOLUME ["/root/.jupyter/"]
CMD ["jupyter", "lab"]
