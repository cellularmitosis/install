#!/bin/bash

set -e -o pipefail -x

mkdir -p "${HOME}/.bashrc.d"
mkdir -p "${HOME}/.bash_profile.d"

install.sh md5sum

if [ "$( md5sum bashrc | awk '{print $1}' )" != "a5f58db2269bf61bac78118421a2d1d4" ]
then
    cp -a bashrc ${HOME}/.bashrc
fi
