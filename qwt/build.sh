cp -r include/* $PREFIX/include

dst_dir=$PREFIX/lib
mkdir -p $dst_dir
cp $(uname)$ARCH/* $dst_dir