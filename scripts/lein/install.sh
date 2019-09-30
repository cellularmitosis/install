#!/bin/bash

# install leiningen.

set -e -o pipefail -x

if which lein > /dev/null
then
    exit 0
fi

install.sh home-local
install.sh java

cd ~/local/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
