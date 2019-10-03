#!/bin/bash

set -e -o pipefail -x

if which code > /dev/null
then
    exit 0
fi

install.sh home-local

cd ~/Downloads
wget -O code.tar.gz 'https://go.microsoft.com/fwlink/?LinkID=620884'
cd ~/opt
cat ~/Downloads/code.tar.gz | gunzip | tar x
cd ~/bin
ln -s ~/opt/VSCode-linux-x64/code .
