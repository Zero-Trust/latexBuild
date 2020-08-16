#!/bin/bash

files="${1}"
compiler=${2}
args=${3}
function setupMakefile() {

for file in "${files[@]}"
    do
      target_basename="${file%.*}"
      echo ${target_basename}
      #sed -i -e "s@template.pdf@${target_basename}.tex@" ./Makefile
      #sed -i -e "s@template.tex@${target_basename}.tex@" ./Makefile
    done
}

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
echo "${files[@]}"

setupMakefile

echo "--------------"
pwd
ls
echo "--------------"

#make && make clean


