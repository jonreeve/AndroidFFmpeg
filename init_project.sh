#!/bin/bash

set -e # bail on error

git submodule init
git submodule sync #if you are updating source code
GIT_SSL_NO_VERIFY=true git submodule update

cd FFmpegLibrary/jni

echo freetype2
cd freetype2
./autogen.sh
cd ..

echo fribidi
cd fribidi
autoreconf -ivf
cd ..

echo libass
cd libass
autoreconf -ivf
cd ..

echo vo-aacenc
cd vo-aacenc
autoreconf
cd ..

echo vo-amrwbenc
cd vo-amrwbenc
autoreconf
cd ..

echo Done!

