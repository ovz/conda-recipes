#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]
then
    sed -i "s:#ifdef WITH_NEXT_FRAMEWORK:#if 1:g" src/_macosx.m
fi

cp setup.cfg.template setup.cfg || exit 1

sed -i "s:/usr/local:$PREFIX:g" setupext.py

# Break Tkinter so it is not get compiled into matplotlib
sed -i -r 's:(import( tkinter as)? Tkinter):import no_Tkinter:' setupext.py

"$PYTHON" setup.py install

rm -rf "$SP_DIR/PySide"
rm -rf "$SP_DIR/__pycache__"
rm -rf "$PREFIX/bin/nose"*

