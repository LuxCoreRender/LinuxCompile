#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -vr include/serial include/tbb $INCLUDE_INSTALL_DIR

cp -vr ../tbb2019_20191006oss/lib/intel64/gcc4.8/lib* $LIBRARY_INSTALL_DIR
