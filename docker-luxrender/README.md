 
Building Luxrender for linux with Docker
========================================

Use either the included Vagrantfile (with vagrant+virtualbox) or install Docker for your linux distribution.

For ubuntu you can call this script (as root): 
curl -sSL https://get.docker.com/ | sh

Clone the linux build repository:

    hg clone https://bitbucket.org/luxrender/linux
    cd linux
    
Build the docker image we'll be using to build Luxrender with:

    docker build -t luxrender/linux-build docker-linux

Then invoke it:

    docker run -it -v ${PWD}:/tmp/linux -v ${PWD}/luxbuild:/tmp/luxbuild luxrender/linux-build

After the build completes, the (static) binaries wil be available in the `luxbuild` folder

