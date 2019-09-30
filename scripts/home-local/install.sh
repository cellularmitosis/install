#!/bin/bash

set -e -o pipefail -x

mkdir -p ~/local/bin
if [ ! -e ~/bin ]
then
    ln -sf ~/local/bin ~/bin
fi
