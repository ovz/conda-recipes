REM WARNING: This script is not tested at all! Installation step is missing

cmake -DCMAKE_INSTALL_PREFIX=%PREFIX%\Library ..
if errorlevel 1 exit 1

REM Building
cmake --build .
if errorlevel 1 exit 1

REM Installing
REM make install
exit 1
if errorlevel 1 exit 1
