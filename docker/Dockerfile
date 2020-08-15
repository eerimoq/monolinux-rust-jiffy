FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY arm-linux-musleabi-cross-10.tgz .
RUN tar xf arm-linux-musleabi-cross-10.tgz -C /opt
RUN rm arm-linux-musleabi-cross-10.tgz

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    rsync \
    flex \
    bison \
    bc \
    python3 \
    python3-pip \
    bpython3 \
    git \
    gitk \
    libelf-dev \
    gettext \
    autoconf \
    autogen \
    autopoint \
    libtool \
    cpio \
    bash-completion \
    libncurses5-dev \
    pkg-config \
    libusb-1.0-0-dev \
    uuid-dev \
    libssl-dev \
    libpkcs11-helper1-dev \
    sudo \
    u-boot-tools \
    locales \
    xxd \
    tio \
    liblz4-tool \
    gdb-multiarch \
    texinfo \
    unzip \
    help2man \
    gawk \
    libtool-bin \
    tcpdump

RUN mv /usr/sbin/tcpdump /usr/bin

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN export RUSTUP_HOME=/opt/rustup && \
    export CARGO_HOME=/opt/cargo && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
    sh -s -- -y --no-modify-path --target arm-unknown-linux-musleabi

RUN pip3 install \
    ecdsa \
    pbtools \
    messi \
    nala==0.175.1 \
    systest==5.9.0 \
    bunga==0.44.0 \
    bincopy==17.1.0 \
    pyserial

RUN echo '%sudo	ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV HOSTNAME=monolinux-rust-jiffy