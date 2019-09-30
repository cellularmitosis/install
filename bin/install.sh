#!/bin/bash

set -e -o pipefail -x

target=$1

mkdir -p ~/.install/cache/$target
cd ~/.install/cache/$target
wget -N https://raw.githubusercontent.com/cellularmitosis/install/scripts/$target/install.sh
bash install.sh
