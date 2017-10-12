#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT_DIR=$(cd "$DIR/../" && pwd)
EXTERNAL_ROLE_DIR="$ROOT_DIR/roles/external"
find "${EXTERNAL_ROLE_DIR}" -maxdepth 1 -not -path "${EXTERNAL_ROLE_DIR}" -type d -exec sh -c 'cd $1; echo -n "$1 --- "; git pull' _ {} \;
