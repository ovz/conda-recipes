:: Clear all setuptools dependencies since they are not required, and also they
:: break our recipe when we use matplotlib-nogui package instead of matplotlib.
ECHO > requirements.txt

"%PYTHON%" setup.py install
if errorlevel 1 exit 1
