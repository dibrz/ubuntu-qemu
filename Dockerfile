FROM arm64v8/ubuntu:bionic
# COPY ./sources.list /etc/apt/

COPY tmp/qemu-aarch64-static /usr/bin/qemu-aarch64-static
RUN cat /etc/apt/sources.list

# install packages
RUN  apt-get update && \
    apt-get install -y --fix-missing --no-install-recommends --no-install-suggests \
    wget gnupg 
    #&& \
    #wget -qO - http://apt.armbian.com/armbian.key | apt-key add - && \
    #echo 'deb https://apt.armbian.com bionic main utils' > /etc/apt/sources.list.d/armbian.list && \
    #apt upgrade && \
    #apt-get update && \
    #apt-get upgrade
