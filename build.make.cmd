@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> make drmingw

call build.config.cmd

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x vendor/drmingw-%PRODUCT_VERSION%-win64.7z -aoa -obuild
move /Y "build\drmingw-%PRODUCT_VERSION%-win64" "release"
if exist build\ rmdir /Q /S build

