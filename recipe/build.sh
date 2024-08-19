#!/bin/bash
set -ex

cp $BUILD_PREFIX/share/gnuconfig/config.* .

./autogen.sh
./configure --prefix=$PREFIX
make -j $CPU_COUNT
make install
