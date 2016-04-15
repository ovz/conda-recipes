#!/bin/bash

# Clear all setuptools dependencies since they are not required, and also they
# break our recipe when we use matplotlib-nogui package instead of matplotlib.
> requirements.txt

$PYTHON setup.py install
