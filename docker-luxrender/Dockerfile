# Build LuxRender using Docker
#
# To build (from root directory):
#  docker build -t luxrender/linux-build docker-luxrender
# To run:
#  docker run -it luxrender/linux-build

FROM ubuntu:14.04
MAINTAINER David Bucciarelli <dade916@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && apt-get install -y cmake mercurial wget g++ python3.4 libpython3.4-dev \
  patch xz-utils libtool automake autoconf libx11-dev libgl1-mesa-dev unzip \
  bison flex freeglut3 freeglut3-dev doxygen
  
WORKDIR /tmp/build

ADD build.sh /tmp/build/build.sh

#CMD /tmp/build/build_luxrender.sh
CMD /bin/bash
