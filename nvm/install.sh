#!/usr/bin/env bash
set -e

if ! command -v nvm &> /dev/null
then
    echo "nvm could not be found. Installing..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
fi
