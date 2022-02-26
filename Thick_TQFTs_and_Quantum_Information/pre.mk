
#CODE_DEPS=$(shell ls -1 ${PRJWD}/*/*.sage | sed 's:\(.*\):${PRJWD}/build/\1.out:g')
BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 *.sty)
TEX_DEPS=$(shell ls -1 *.tex)

%.pdf: %.tex
	pdflatex -interaction nonstopmode\
           $<
	bibtex $*
	pdflatex -interaction nonstopmode\
           $<
	pdflatex -interaction nonstopmode\
           $<
	cp build/$@ .

