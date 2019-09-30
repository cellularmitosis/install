#!/bin/bash

set -e -o pipefail -x

target=$1

mkdir -p ~/.install/cache
cd ~/.install/cache
wget https://raw.githubusercontent.com/cellularmitosis/install/scripts/$1/install.sh
bash install.sh
