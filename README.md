![Docker Stars](https://img.shields.io/docker/stars/ntuangiang/cpp.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/ntuangiang/cpp.svg)
![Docker Automated build](https://img.shields.io/docker/automated/ntuangiang/cpp.svg)

# Cpp

A [C++](https://en.cppreference.com/w/) program is a sequence of text files (typically header and source files) that contain declarations. They undergo translation to become an executable program, which is executed when the [C++](https://en.cppreference.com/w/) implementation calls its main function.

## Docker Repository
[ntuangiang/cpp](https://hub.docker.com/r/ntuangiang/cpp) 

## Usage
- Start services

```shell script
docker run -d -p 2202:22 -p 7778:7777 ntuangiang/cpp
```

- Docker compose

```yaml
version: "3.8"

services:
  cpp:
    image: ntuangiang/cpp # Image latest
    environment:
      - DISPLAY=:0.0
    volumes:
      - /tmp/.X11-unix:/tmp/.X11-unix
    ports:
      - "2202:22" # Remote
      - "7778:7777" # Debug
    restart: always
```

## LICENSE

MIT License
