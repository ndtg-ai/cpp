FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y apt-utils gcc g++ git curl build-essential gdb gdbserver rsync vim

RUN git clone https://github.com/Kitware/CMake.git

RUN cd CMake \
    && ./bootstrap && make && make install

RUN ln -s /usr/local/bin/cmake /usr/bin/cmake

COPY . /root/

RUN rm -rf CMake

EXPOSE 7777