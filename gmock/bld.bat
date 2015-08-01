set gmock_dir=gmock-1.7.0

# For now gmock and gtest src dirs go to %LIBRARY_INC%\src
# for backwards compatibility. 
set sub_dir=gmock
xcopy /Y /I /E %gmock_dir%\include\%sub_dir% %LIBRARY_INC%\%sub_dir% 
set sub_dir=src
xcopy /Y /I /E %gmock_dir%\%sub_dir% %LIBRARY_INC%\%sub_dir% 

set sub_dir=gtest
xcopy /Y /I /E %gmock_dir%\gtest\include\%sub_dir% %LIBRARY_INC%\%sub_dir% 
set sub_dir=src
xcopy /Y /I /E %gmock_dir%\gtest\%sub_dir% %LIBRARY_INC%\%sub_dir% 

