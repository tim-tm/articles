#!/usr/bin/env bash

set -xe

latexmk -aux-directory=build -output-directory=build dh.tex
