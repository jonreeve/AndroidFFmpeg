git submodule init
git submodule sync #if you are updating source code
git submodule update
cd FFmpegLibrary/jni

cd freetype
./autogen.sh
cd ..

cd fribidi
autoreconf -ivf
cd ..

cd libass
autoreconf -ivf
cd ..

cd vo-aacenc
autoreconf
cd ..

cd vo-amrwbenc
autoreconf
cd ..

