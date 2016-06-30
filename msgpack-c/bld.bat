REM COPY Header files for now


xcopy /Y /I /E include %PREFIX%\include 


REM WARNING: This script is not tested at all! Installation step is missing

REM cmake -DCMAKE_INSTALL_PREFIX=%PREFIX%\Library ..
REM if errorlevel 1 exit 1

REM Building
REM cmake --build .
REM if errorlevel 1 exit 1

REM Installing
REM make install
REM exit 1
REM if errorlevel 1 exit 1
