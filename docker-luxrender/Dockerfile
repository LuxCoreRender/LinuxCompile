#
# To build LuxRender using Docker
#

FROM ubuntu:14.04
MAINTAINER David Bucciarelli <dade916@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

#RUN \
#  apt-get update && apt-get install -y cmake mercurial wget g++ python3.4 libpython3.4-dev \
#  patch xz-utils libtool automake autoconf libx11-dev libxrandr-dev libxinerama-dev \
#  libxcursor-dev libgl1-mesa-dev libgtk-3-dev unzip \
#  bison flex freeglut3 freeglut3-dev libglew-dev doxygen python3.4 libpython3.4-dev \
#  pkg-config

RUN \
  apt-get update && apt-get install -y cmake mercurial wget g++ python3.4 libpython3.4-dev \
  patch xz-utils libtool automake autoconf libx11-dev libgl1-mesa-dev unzip \
  bison flex freeglut3 freeglut3-dev doxygen


WORKDIR /tmp
ADD build.sh /tmp/build.sh

#CMD /tmp/build.sh
CMD /bin/bash
