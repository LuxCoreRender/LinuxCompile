 
Building Luxrender for linux with Docker
========================================

For ubuntu you can call this script (as root): 

    curl -sSL https://get.docker.com/ | sh

Clone the linux build repository:

    hg clone https://bitbucket.org/luxrender/linux
    cd linux

Build the docker image we'll be using to build Luxrender with:

    docker build -t luxrender/linux-build docker-luxrender

Then invoke it:

    docker run -it -v ${PWD}:/tmp/linux-build luxrender/linux-build

After the build completes, the (static) binaries will be available in the `luxbuild` folder
