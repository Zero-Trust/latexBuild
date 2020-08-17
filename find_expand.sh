#!/bin/bash

target_filename=${1}

PARENTDIR=$(dirname $(find . -name ${target_filename}))
cp -Rf ${PARENTDIR}/* ./
# rm -rf ${PARENTDIR}

