#!/bin/bash

set -e -o pipefail

if which md5sum > /dev/null
then
    exit 0
fi

if [ "$( uname -s )" == "Linux" ]
then
    sudo apt-get install coreutils
elif [ "$( uname -a )" == "Darwin" ]
then
    brew install md5sha1sum
else
    echo "Error: Don't know how to install md5sum" >&2
    exit 1
fi
