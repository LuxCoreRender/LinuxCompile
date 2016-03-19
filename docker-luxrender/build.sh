#!/bin/bash

cd /tmp
echo " *** Cloning https://bitbucket.org/luxrender/linux ***"
hg clone https://bitbucket.org/luxrender/linux linux
cd linux
hg update docker_integration

# Clone Lux and LuxRays repositories
echo " *** Cloning https://bitbucket.org/luxrender/lux ***"
hg clone https://bitbucket.org/luxrender/lux lux
cd lux
echo " *** Cloning https://bitbucket.org/luxrender/luxrays ***"
hg clone https://bitbucket.org/luxrender/luxrays luxrays
cd ..

# Build everything
./build-64-sse2 lux
