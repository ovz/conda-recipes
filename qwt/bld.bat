set sub_dir=qwt
xcopy /Y /I /E include\%sub_dir% %LIBRARY_INC%\%sub_dir% 
copy /Y Win\lib\* %LIBRARY_LIB%

xcopy /Y /I /E Win%ARCH%\* %SP_DIR%
