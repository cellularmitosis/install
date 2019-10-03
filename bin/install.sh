#!/bin/bash

set -e -o pipefail -x

target=$1

skip="false"
for i in $( echo $INSTALL_ALREADY_TARGETS | tr ':' ' ' )
do
    if [ "$i" == "$target" ]
    then
        skip="true"
    fi
done
if [ "$skip" == "true" ]
then
    exit 0
fi
export INSTALL_ALREADY_TARGETS="$target:$INSTALL_ALREADY_TARGETS"

cd ~/github/cellularmitosis/install
if [ "$INSTALL_ALREADY_DID_GIT_PULL" != "true" ]
then
    git pull
    export INSTALL_ALREADY_DID_GIT_PULL="true"
fi
cd scripts/$target
bash install.sh
