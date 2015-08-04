gmock_dir=gmock-1.7.0

include_dir=$PREFIX/include
mkdir -p $include_dir

cp -r $gmock_dir/include/* $include_dir
cp -r $gmock_dir/src $include_dir

gtest_dir=$gmock_dir/gtest
cp -r $gtest_dir/include/* $include_dir
cp -r $gtest_dir/src $include_dir
