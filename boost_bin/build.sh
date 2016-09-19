root=macports/boost_1_59_2_clang

dst_dir=$SP_DIR
mkdir -p $dst_dir
cp $root/$(uname)$ARCH/* $dst_dir

include_dir=$PREFIX/include
mkdir -p $include_dir

boost_include_dir=boost
cp -r $root/include/$boost_include_dir $include_dir/$boost_include_dir