#!/bin/bash

set -e

cd /tmp/linux

hg clone https://bitbucket.org/luxrender/linux linux
cd linux
hg update docker_integration

 Clone Lux and LuxRays repositories
hg clone https://bitbucket.org/luxrender/lux lux
cd lux
hg clone https://bitbucket.org/luxrender/luxrays luxrays
cd ..

# Build everything
./build-64-sse2 lux
