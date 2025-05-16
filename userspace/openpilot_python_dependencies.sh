#!/bin/bash -e

echo "installing uv..."

export XDG_DATA_HOME="/usr/local"

./uv-installer.sh

PYTHON_VERSION="3.12"

# uv requires virtual env either managed or system before installing dependencies
uv venv $XDG_DATA_HOME/venv --seed --python-preference only-system --python=$PYTHON_VERSION
