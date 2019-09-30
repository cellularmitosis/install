#!/bin/bash

set -e -o pipefail -x

if which redshift > /dev/null
then
    exit 0
fi

install.sh home-local

sudo apt-get install redshift

cp -a redshift.sh ~/local/bin/

mkdir -p ~/.config/autostart
cp -a redshift.desktop ~/.config/autostart/
