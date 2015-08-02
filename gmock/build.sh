gmock_dir=gmock-1.7.0

cp -r $gmock_dir/include/* $PREFIX/include
cp -r $gmock_dir/src $PREFIX/include

gtest_dir=$gmock_dir/gtest
cp -r $gtest_dir/include/* $PREFIX/include
cp -r $gtest_dir/src $PREFIX/include
