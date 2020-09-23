FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

ENV DISPLAY=:0.0

ENV CGO_CXXFLAGS "--std=c++1z"
ENV CGO_CPPFLAGS -I/usr/local/include

RUN apk add --no-cache make cmake gdb ninja pkgconf \
    libstdc++ g++ gtk+3.0-dev boost-dev \
    clang gflags \
 && rm -rf /var/cache/apk/*

EXPOSE 7777
