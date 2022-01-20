
#CODE_DEPS=$(shell ls -1 ${PRJWD}/*/*.sage | sed 's:\(.*\):${PRJWD}/build/\1.out:g')
BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 *.sty)
TEX_DEPS=$(shell ls -1 *.tex)

%.pdf: %.tex
	pdflatex -interaction nonstopmode\
           -output-directory build\
           $<
	biber --output-directory build $*
	pdflatex -interaction nonstopmode\
           -output-directory build\
           $<
	pdflatex -interaction nonstopmode\
           -output-directory build\
           $<
	cp build/$@ .

