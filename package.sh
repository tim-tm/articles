#!/bin/sh

mkdir -p build

for file in ./*/build/*.pdf
do
    cp ${file} build
done

cd build

files=""
for f in *.pdf
do
    files+="${f} "
done
echo "${files}"

tar -czf articles.tar.gz ${files}
