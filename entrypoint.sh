#!/bin/bash

files="${1}"
compiler=${2}
args=${3}
#make_setu_up.sh

apt update && apt install -y build-essential
echo "**************"
echo "/"
ls -lh /
echo "**************"
pwd
ls -lh .
echo "**************"

cp -f /.latexmkrc ./
cp -f /Makefile   ./

echo "--------------"
pwd
ls
echo "--------------"

make && make clean


