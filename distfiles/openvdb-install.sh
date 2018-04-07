#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -vr include/openvdb $INCLUDE_INSTALL_DIR

cp -vr lib/lib* $LIBRARY_INSTALL_DIR
