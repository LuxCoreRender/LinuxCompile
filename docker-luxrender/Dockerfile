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
  
RUN apt-get remove -y mercurial python2.7
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.4 1

WORKDIR /tmp/build

ADD build_luxrender.sh /tmp/build/build_luxrender.sh
ADD build_luxrender_inline.sh /tmp/build/build_luxrender_inline.sh

#CMD /tmp/build/build_luxrender.sh
CMD /bin/bash
