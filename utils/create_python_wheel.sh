#!/bin/bash
#
# ./utils/create_python_wheel.sh target-64-sse2 luxcorerender-v2.0alpha4-linux64

if [[ ! $2 ]] ; then
	echo " * Unable to create Python Wheel"
	exit 1
fi

TARGET=$1
LUX_TAG=$2

rm -rf $TARGET/$LUX_TAG-wheel
mkdir -p $TARGET/$LUX_TAG-wheel/pyluxcore

cp $LUX_TAG/pywheel/setup.py $TARGET/$LUX_TAG-wheel
cp $LUX_TAG/pywheel/setup.cfg $TARGET/$LUX_TAG-wheel
cp $LUX_TAG/pywheel/MANIFEST.in $TARGET/$LUX_TAG-wheel
cp $LUX_TAG/pywheel/__init__.py $TARGET/$LUX_TAG-wheel/pyluxcore

cp -r $LUX_TAG/src/pyluxcoretools/pyluxcoretools $TARGET/$LUX_TAG-wheel/pyluxcoretools

cp $LUX_TAG/README.md $TARGET/$LUX_TAG-wheel/README.rst
cp $LUX_TAG/AUTHORS.txt $TARGET/$LUX_TAG-wheel/AUTHORS.txt
cp $LUX_TAG/COPYING.txt $TARGET/$LUX_TAG-wheel/LICENSE.txt

cp $LUX_TAG/lib/*.so $TARGET/$LUX_TAG-wheel/pyluxcore
cp $TARGET/lib/libembree.so.2 $TARGET/lib/libtbb.so.2 $TARGET/lib/libtbbmalloc.so.2 $TARGET/$LUX_TAG-wheel/pyluxcore


cd $TARGET/$LUX_TAG-wheel
python3 setup.py bdist_wheel --plat-name manylinux1_x86_64
twine upload dist/*.whl
cd -
