FROM jupyterhub/jupyterhub:1.5

ADD create_user.sh .

RUN chmod +x create_user.sh && \
    ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    apt-get update && apt-get install -y git vim zip unzip tree wget && apt-get clean && \
    pip install --no-cache-dir -U notebook jupyterhub fire jupyter_contrib_nbextensions jupyter_nbextensions_configurator ipympl nbresuse
