# Build LuxRender using Docker
#
# To build (from root directory):
#  docker build -t dade916/luxrender-build docker-luxrender
# To run:
#  docker run dade916/luxrender-build
FROM debian:8.2
MAINTAINER David Bucciarelli <dade916@gmail.com>

RUN apt-get update && apt-get install -y \
    mercurial \
    wget \
    g++ \
    libglew-dev

WORKDIR /tmp
COPY build /tmp/build

CMD ./build
