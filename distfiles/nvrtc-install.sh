#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -avr targets/x86_64-linux/lib/libnvrtc* $LIBRARY_INSTALL_DIR
