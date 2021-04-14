#!/bin/bash

INCLUDE_INSTALL_DIR="$1"/include
LIBRARY_INSTALL_DIR="$1"/lib

mkdir -p $INCLUDE_INSTALL_DIR
mkdir -p $LIBRARY_INSTALL_DIR

cp -av include/OpenImageDenoise $INCLUDE_INSTALL_DIR

cp -av lib/lib* $LIBRARY_INSTALL_DIR

rm $LIBRARY_INSTALL_DIR/libtbb.so
rm $LIBRARY_INSTALL_DIR/libtbb.so.12
cp $LIBRARY_INSTALL_DIR/libtbb.so.12.1 $LIBRARY_INSTALL_DIR/libtbb.so.12
