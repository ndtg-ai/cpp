FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

RUN apk add --no-cache libstdc++ g++ dbus xauth xhost make cmake gdb \
 && rm -rf /var/cache/apk/*

RUN apk add --no-cache --virtual gtk+3.0-dev boost-dev pkgconfig \
 && rm -rf /var/cache/apk/*

EXPOSE 7777
