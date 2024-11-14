#!/bin/sh

set -xe

mkdir -p build
pdflatex -aux-directory=build -output-directory=build nn.tex
