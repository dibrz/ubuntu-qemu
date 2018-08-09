FROM arm64v8/ubuntu:18.04
# COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static
COPY ./sources.list /etc/apt/
COPY tmp/qemu-aarch64-static /usr/bin/qemu-aarch64-static
