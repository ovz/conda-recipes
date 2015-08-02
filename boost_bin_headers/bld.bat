set boost_bin_root=C:\local\boost_1_57_0

set sub_dir=boost
xcopy /Y /I /E %boost_bin_root%\%sub_dir% %LIBRARY_INC%\%sub_dir% 