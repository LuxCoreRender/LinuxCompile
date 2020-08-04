#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -avr targets/x86_64-linux/lib/libnvrtc* $LIBRARY_INSTALL_DIR

# Fix missing rpath, so one shared lib can find the other when it is loaded by BlendLuxCore
patchelf --set-rpath ./ $LIBRARY_INSTALL_DIR/libnvrtc.so
patchelf --set-rpath ./ $LIBRARY_INSTALL_DIR/libnvrtc-builtins.so
