#!/bin/bash

# Working directory agnostic, uses script_dir

# bash flags: (-e) Stop executing on first error and (-x) show executed commands
set -e -x

script_dir="$(cd `dirname $0`; pwd)"

source $script_dir/build_crossplatform.sh
