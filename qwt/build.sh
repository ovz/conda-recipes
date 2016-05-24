cp -r include/* $PREFIX/include

mathml_dir=$PREFIX/include/qwt/mathml
mkdir -p $mathml_dir
cp src/textengines/mathml/*.h $mathml_dir

dst_dir=$PREFIX/lib
mkdir -p $dst_dir
cp $(uname)$ARCH/* $dst_dir