set sub_dir=qwt
xcopy /Y /I /E include\%sub_dir% %LIBRARY_INC%\%sub_dir% 

xcopy /Y /I /E src\textengines\mathml\*.h %LIBRARY_INC%\%sub_dir%\mathml 

copy include\*.pri %LIBRARY_INC%
copy /Y Win\lib\* %LIBRARY_LIB%

xcopy /Y /I /E Win%ARCH%\* %SP_DIR%
