#!/bin/sh

for dir in ./*/
do
    dir=${dir%*/}
    echo "${dir}"

    cd ${dir}
    sh build.sh
    cd ..
done