#!/bin/sh

set -xe

mkdir -p build
mkdir -p build/includes
pdflatex -aux-directory=build -output-directory=build --shell-escape mathenotes.tex
