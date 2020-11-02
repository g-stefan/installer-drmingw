@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build.config.cmd

echo -^> vendor %PRODUCT_NAME%

if not exist vendor\ mkdir vendor

set WEB_LINK=https://github.com/jrfonseca/drmingw/releases/download/%PRODUCT_VERSION%/drmingw-%PRODUCT_VERSION%-win64.7z
if not exist vendor\drmingw-%PRODUCT_VERSION%-win64.7z curl --insecure --location %WEB_LINK% --output vendor\drmingw-%PRODUCT_VERSION%-win64.7z
