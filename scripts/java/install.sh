#!/bin/bash

# install java.

set -e -o pipefail -x

if which java > /dev/null
then
    exit 0
fi

if [ "$( uname -s )" == "Linux" ]
then
    sudo apt-get install default-jdk
else
    echo "Error: don't know how to install java." >&2
    exit 1
fi
