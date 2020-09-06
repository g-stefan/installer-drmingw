@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> installer drmingw

if exist installer\ rmdir /Q /S installer
mkdir installer

if exist build\ rmdir /Q /S build
mkdir build

makensis.exe /NOCD "util\drmingw-installer.nsi"

call grigore-stefan.sign "DrMingw" "installer\drmingw-0.9.2-installer.exe"

if exist build\ rmdir /Q /S build
