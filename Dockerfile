FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

ENV DISPLAY=:0.0

RUN apk add --no-cache make cmake gdb pkgconfig \
    libstdc++ g++ gtk+3.0-dev boost-dev \
 && rm -rf /var/cache/apk/*

EXPOSE 7777
