@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

if not exist vendor\ mkdir vendor

set WEB_LINK=https://github.com/jrfonseca/drmingw/releases/download/0.9.2/drmingw-0.9.2-win64.7z
if not exist vendor\drmingw-0.9.2-win64.7z curl --insecure --location %WEB_LINK% --output vendor\drmingw-0.9.2-win64.7z
