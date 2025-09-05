set -euxo pipefail
umask 022

cmake -S . -B _build -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS=ON ${CMAKE_ARGS} -DUSE_OPENMP:BOOL=ON -DUSE_FFTW:BOOL=ON -DUSE_MKL:BOOL=OFF
cmake --build _build
cmake --install _build --prefix $PREFIX
rm -f "${PREFIX}/lib/libasdlib.a"
