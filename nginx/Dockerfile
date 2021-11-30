FROM centos:7

RUN yum install -y epel-release && \
    yum install -y nginx nginx-all-modules vim tree && \
    yum clean all && \
    ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD ["nginx","-g","daemon off;"]
