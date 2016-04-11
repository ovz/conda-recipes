:: conda-build tries to compile .pyc files in Python 2 environment, but Invoke
:: has yaml for Python3 codebase, which fails on Python2.
:: Related question on conda-build issue tracker:
:: https://github.com/conda/conda-build/pull/317#commitcomment-12926020
:: WARNING: this has to be removed when noarch_python is enabled!
if "%PY_VER%" == "2.7" rmdir /S /Q "invoke\vendor\yaml3"
else rmdir /S /Q "invoke\vendor\yaml2"

"%PYTHON%" setup.py install
if errorlevel 1 exit 1
