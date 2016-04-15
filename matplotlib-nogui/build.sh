#!/bin/bash

if [ "$(uname)" == "Linux" ]; then
    ln -s libtcl8.5.so "$PREFIX/lib/libtcl.so"
    ln -s libtk8.5.so "$PREFIX/lib/libtk.so"
fi

cat <<EOF > setup.cfg
[directories]
basedirlist = $PREFIX
[packages]
tests = False
toolkit_tests = False
sample_data = False
[gui_support]
cairo = False
gtk = False
gtk3agg = False
gtk3cairo = False
gtkagg = False
macosx = False
pyside = False
qt4agg = False
tkagg = False
windowing = False
wxagg = False
EOF

cat setup.cfg
sed -i.bak "s|/usr/local|$PREFIX|" setupext.py


"$PYTHON" setup.py install
