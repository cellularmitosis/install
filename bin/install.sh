#!/bin/bash

set -e -o pipefail -x

target=$1

cd ~/github/cellularmitosis/install
if [ "$INSTALL_ALREADY_DID_GIT_PULL" != "true" ]
then
    git pull
    export INSTALL_ALREADY_DID_GIT_PULL="true"
fi
git pull
cd scripts/$target
bash install.sh
