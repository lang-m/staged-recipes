setlocal EnableDelayedExpansion

mkdir _build

cmake -S . -B _build -G Ninja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS=ON ${CMAKE_ARGS}
if errorlevel 1 exit 1

cmake --build _build
if errorlevel 1 exit 1

cmake --install _build --prefix %LIBRARY_PREFIX%
if errorlevel 1 exit 1

