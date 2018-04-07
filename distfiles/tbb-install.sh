#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -vr include/serial include/tbb $INCLUDE_INSTALL_DIR

cp -vr ../tbb2018_20171205oss/lib/intel64/gcc4.7/lib* $LIBRARY_INSTALL_DIR