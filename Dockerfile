FROM arm64v8/ubuntu:bionic
COPY ./sources.list /etc/apt/

COPY tmp/qemu-aarch64-static /usr/bin/qemu-aarch64-static

# install packages
RUN apt-get update && \
    apt-get upgrade
