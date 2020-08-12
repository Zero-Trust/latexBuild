#!/bin/bash

files="${1}"
compiler=${2}
args=${3}
#make_setu_up.sh

apt install -y make

make && make clean


