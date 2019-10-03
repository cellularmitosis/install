#!/bin/bash

set -e -o pipefail -x

install.sh home-local

if ! which redshift > /dev/null
then
    sudo apt-get install redshift
fi

cp -a redshift.sh ~/local/bin/

mkdir -p ~/.config/autostart
cp -a redshift.desktop ~/.config/autostart/
