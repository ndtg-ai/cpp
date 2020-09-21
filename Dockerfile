FROM ntuangiang/ubuntu-ssh:latest

MAINTAINER Nguyen Tuan Giang "https://github.com/ntuangiang"

RUN apk add --no-cache libstdc++ g++ gtk+3.0 boost dbus xauth xhost make cmake gdb \
 && rm -rf /var/cache/apk/*

# Build Dependency
RUN apk add --no-cache --virtual build-deps \
    build-base gtk+3.0-dev boost-dev pkgconfig \
 && rm -rf /var/cache/apk/* \
 && apk del build-deps

EXPOSE 7777
