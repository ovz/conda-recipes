rem NB: Change suffix when upgrading to Boost 2.0
powershell -noProfile -Command "Copy-Boost -build_type_suffix "mt-gd-1" -boost_bin_root C:\local\boost_1_57_0 -ARCH %ARCH% -SP_DIR %SP_DIR% -LIBRARY_LIB %LIBRARY_LIB% -LIBRARY_INC %LIBRARY_INC%"
