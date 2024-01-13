# Use ubuntu base
FROM debian:bullseye-slim

# Prevent dpkg interactive dialogues
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV LC_ALL=C
ENV LANGUAGE=C
ENV LANG=C
ENV ENV TZ=UTC

# Install required packages
RUN apt-get update \
    && apt upgrade -y \
    && apt-get install -y \
        bc \
        binfmt-support \
        binutils-aarch64-linux-gnu \
        bison \
        build-essential \
        cpio \
        debootstrap \
        dpkg-dev \
        device-tree-compiler \
        dosfstools \
        fakeroot \
        fakechroot \
        fdisk \
        flex \
        gcc-aarch64-linux-gnu \
        git \
        git-lfs \
        kmod \
        libssl-dev \
        multistrap \
        parted \
        python-is-python3 \
        python2 \
        python3 \
        qemu-system-arm \
        qemu-system-common \
        qemu-user-static \
        rsync \
        u-boot-tools \
        udev \
        uuid-runtime \
        xz-utils \
        && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /opt
