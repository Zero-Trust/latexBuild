#!/bin/bash

files="${1}"
compiler=${2}
args=${3}
#make_setu_up.sh

apt update && apt install -y --no-install-recommends build-essential
echo "**************"
ls -lh .
echo "**************"

make && make clean


