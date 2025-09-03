cmake -S . -B _build -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS=ON ${CMAKE_ARGS}
cmake --build _build
cmake --install _build --prefix $PREFIX

