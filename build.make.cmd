@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> make drmingw

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x vendor/drmingw-0.9.2-win64.7z -aoa -obuild
move /Y "build\drmingw-0.9.2-win64" "release"
if exist build\ rmdir /Q /S build

