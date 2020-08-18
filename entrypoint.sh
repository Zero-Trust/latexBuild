#!/bin/bash

# files="${1}"
file="${1}"
compiler="${2}"
args="${3}"

function setupMakefile() {
    target_basename="${file%.*}"
    sed -i -e "s@template.pdf@${target_basename}.pdf@g" /Makefile
    sed -i -e "s@template.tex@${target_basename}.tex@g" /Makefile
}

# ----------------------
# [ find_expand.sh ]
target_filename=${1}
echo "${target_filename}"
echo $(find . -name ${target_filename})
PARENTDIR=$(dirname $(cd $(find . -name ${target_filename}) && pwd))
if[ "${PARENTDIR}" != "/" ]; then
  mv ${PARENTDIR}/* ./
fi
# ----------------------
# cp -Rf ${PARENTDIR}/* ./
# rm -rf ${PARENTDIR}
# ----------------------


# install make command
apt update && apt install -y build-essential

cp -f /.latexmkrc ./
setupMakefile

echo "++++++++++ Makefile +++++++++++++"
cat /Makefile
echo "++++++++++ Makefile +++++++++++++"

cp -f /Makefile   ./


echo "**************"
echo "/"
ls -lh /
echo "**************"
pwd
ls -lh .
echo "**************"

make && make clean

echo ">>>>>>>>>>>>>>>>>>"
ls -la 
echo ">>>>>>>>>>>>>>>>>>"


