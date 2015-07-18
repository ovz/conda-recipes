#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]
then
    sed "s:#ifdef WITH_NEXT_FRAMEWORK:#if 1:g" -i src/_macosx.m
fi

cp setup.cfg.template setup.cfg || exit 1

sed "s:/usr/local:$PREFIX:g" -i setupext.py

# Break Tkinter so it is not get compiled into matplotlib
sed -r 's:(import( tkinter as)? Tkinter):import no_Tkinter:' -i setupext.py

"$PYTHON" setup.py install

rm -rf "$SP_DIR/PySide"
rm -rf "$SP_DIR/__pycache__"
rm -rf "$PREFIX/bin/nose"*

