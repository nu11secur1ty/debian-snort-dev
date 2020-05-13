# Snort dev
FROM debian:latest
MAINTAINER Ventsislav Varbanovski <penetrateoffensive@gmail.com>

RUN dpkg --configure -a
ENV DEBIAN_FRONTEND=teletype
# Update the image's pre-installed packages
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get autoremove -y 
# Update the image's pre-installed packages
RUN apt-get update && \
    apt-get dist-upgrade -y && \
# Install the Snort build dependencies
    apt-get install -y \
    build-essential \
    cmake \
    libdumbnet-dev \
    libhwloc-dev \
    libhyperscan-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libmnl-dev \
    libpcap-dev \
    libpcre3-dev \
    libssl-dev \
    pkg-config \
    uuid-dev \
    zlib1g-dev \
    wget \
    vim \
    nmap \
    cppcheck \
    curl \
    gdb \
    git \
    lcov \
    libcpputest-dev \
    vim
RUN apt-get autoremove -y &&\
    apt-get clean 
RUN apt-get autoremove -y && \
    apt-get clean
