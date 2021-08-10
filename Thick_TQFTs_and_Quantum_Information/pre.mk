
#CODE_DEPS=$(shell ls -1 ${PRJWD}/*/*.sage | sed 's:\(.*\):${PRJWD}/build/\1.out:g')
BIB_DEPS=$(shell ls -1 ${PRJWD}/*.bib)
STY_DEPS=$(shell ls -1 ${PRJWD}/*/*.sty)
TEX_DEPS=$(shell ls -1 ${PRJWD}/*.tex ${PRJWD}/*/*.tex)

%.pdf: %.tex
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\PRJWD{${PRJWD}} \input{$<}"
	biber --output-directory build $*
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\PRJWD{${PRJWD}} \input{$<}"
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\PRJWD{${PRJWD}} \input{$<}"
	cp build/$@ .

