#!/bin/sh
rm slides.bbl
rm slides.aux
rm slides.log
pdflatex slides.tex
bibtex slides
pdflatex slides.tex
pdflatex slides.tex
rm slides.bbl
rm slides.aux
rm slides.log
rm slides.blg
rm slides.toc
rm -f *~

