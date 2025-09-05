setlocal EnableDelayedExpansion

mkdir _build

cmake -S . -B _build -G Ninja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" -DCMAKE_INSTALL_LIBDIR=lib -DBUILD_SHARED_LIBS=ON ${CMAKE_ARGS}
if errorlevel 1 exit 1

cmake --build _build
if errorlevel 1 exit 1

cmake --install _build --prefix %LIBRARY_PREFIX%
if errorlevel 1 exit 1



@REM setlocal
@REM if exist "%PREFIX%\Library\lib\asdlib.lib" del /f /q "%PREFIX%\Library\lib\asdlib.lib"
@REM if exist "%PREFIX%\Library\lib\libasdlib.lib" del /f /q "%PREFIX%\Library\lib\libasdlib.lib"
@REM if exist "%PREFIX%\Library\lib\libasdlib.a" del /f /q "%PREFIX%\Library\lib\libasdlib.a"
@REM if exist "%PREFIX%\lib\asdlib.lib" del /f /q "%PREFIX%\lib\asdlib.lib"
@REM if exist "%PREFIX%\lib\libasdlib.a" del /f /q "%PREFIX%\lib\libasdlib.a"

