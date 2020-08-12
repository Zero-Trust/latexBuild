#!/bin/bash

files="${1}"
compiler=${2}
args=${3}
#make_setu_up.sh

# make install
apt install -y build-essential && \
make && make clean


