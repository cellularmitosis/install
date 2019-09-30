#!/bin/bash

set -e
set -o pipefail

nohup redshift -l 30.2:-97.8 >/dev/null 2>&1 &
