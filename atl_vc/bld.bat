set root=atl_vc_12

copy /Y %root%\Include %LIBRARY_INC%

xcopy /Y /I /E %root%\Win%ARCH%\* %LIBRARY_LIB%