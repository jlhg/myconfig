#!/bin/bash
set -e

cd $1
wget http://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz
tar xf Python-2.7.6.tar.xz
cd Python-2.7.6
./configure --prefix=$(readlink -f ./build) --with-threads --enable-shared
make
make install
echo "Installed Python to" $(readlink -f ./build)
