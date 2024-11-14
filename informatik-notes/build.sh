#!/bin/sh

mkdirs() {
    mkdir -p build
    mkdir -p build/includes
}

update_bib() {
    cp refs.bib build
    cd build
    bibtex informatiknotes
    cd ..
}

build_pdf() {   
    pdflatex -aux-directory=build -output-directory=build informatiknotes.tex
}

set -xe

mkdirs
build_pdf
update_bib
build_pdf
