#!/bin/bash

cd /tmp
hg clone https://bitbucket.org/luxrender/linux linux
cd linux
hg update docker_integration

# Clone Lux and LuxRays repositories
hg clone https://bitbucket.org/luxrender/lux lux
cd lux
hg clone https://bitbucket.org/luxrender/luxrays luxrays
cd ..

# Remove mercurial and python2.7
apt-get remove -y mercurial
apt-get autoremove -y

# Install python 3.4
apt-get update
apt-get install -y python3.4 libpython3.4-dev
# Set python3.4 as default python
update-alternatives --install /usr/bin/python python /usr/bin/python3.4 1

# Build everything
./build-64-sse2 lux
