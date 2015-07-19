#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]
then
    SED_INPLACE=("sed" "-i" "")
    "${SED_INPLACE[@]}" "s:#ifdef WITH_NEXT_FRAMEWORK:#if 1:g" src/_macosx.m
else
    SED_INPLACE=("sed" "-i")
fi

cp setup.cfg.template setup.cfg || exit 1

"${SED_INPLACE[@]}" "s:/usr/local:$PREFIX:g" setupext.py

# Break Tkinter so it is not get compiled into matplotlib
"${SED_INPLACE[@]}" -r 's:(import( tkinter as)? Tkinter):import no_Tkinter:' setupext.py

"$PYTHON" setup.py install

rm -rf "$SP_DIR/PySide"
rm -rf "$SP_DIR/__pycache__"
rm -rf "$PREFIX/bin/nose"*

