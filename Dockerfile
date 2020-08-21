FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y apt-utils libssl-dev \
        gcc g++ gdb gdbserver build-essential \
        git curl rsync vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Kitware/CMake.git

RUN cd CMake \
    && ./bootstrap && make && make install

RUN ln -s /usr/local/bin/cmake /usr/bin/cmake

COPY . /root/

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -rf CMake

EXPOSE 7777
