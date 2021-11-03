#/bin/bash
if [ x$1 != "x" ] && [ x$2 != "x" ]
then
    useradd -d /home/$1 -m $1;
    echo "$1:$2" | chpasswd;
    su - $1 -c "jupyter contrib nbextension install --user && jupyter nbextensions_configurator enable --user";
    mkdir -p /home/$1/.pip
    echo -e "[global]\nindex-url = https://mirrors.aliyun.com/pypi/simple/\n[install]\ntrusted-host=mirrors.aliyun.com" > /home/$1/.pip/pip.conf
    chown -R $1 /home/$1 && chmod -R 700 /home/$1
else
    echo "create_user.sh <username> <password>";
fi
