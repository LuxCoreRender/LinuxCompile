#!/bin/bash

cd /tmp
echo " *** Downloading https://bitbucket.org/luxrender/linux ***"
wget https://bitbucket.org/luxrender/linux/get/docker_integration.tar.gz
tar zxvf docker_integration.tar.gz
rm docker_integration.tar.gz
mv luxrender-linux-* linux
cd linux

echo " *** Downloading https://bitbucket.org/luxrender/lux ***"
wget https://bitbucket.org/luxrender/lux/get/default.tar.gz
tar zxvf default.tar.gz
rm default.tar.gz
mv luxrender-lux-* lux
cd lux

echo " *** Downloading https://bitbucket.org/luxrender/luxrays ***"
wget https://bitbucket.org/luxrender/luxrays/get/default.tar.gz
tar zxvf default.tar.gz
rm default.tar.gz
mv luxrender-luxrays-* luxrays
cd ..

# Build everything
./build-64-sse2 lux
