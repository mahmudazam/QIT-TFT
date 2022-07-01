
PROJECT=Thick_TQFTs_and_Quantum_Information-Full

BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 *.sty)
TEX_DEPS=$(shell ls -1 *.tex)

all: ${PROJECT}.pdf

${PROJECT}.pdf: ${PROJECT}.tex ${BIB_DEPS} ${STY_DEPS} ${TEX_DEPS}

%.pdf: %.tex
	pdflatex -interaction nonstopmode\
           $<
	bibtex $*
	pdflatex -interaction nonstopmode\
           $<
	pdflatex -interaction nonstopmode\
           $<

.PHONY: clean Clean

clean:
	rm -rf build

Clean: clean
	rm -f *.pdf *.bbl *.blg *.aux *.out *.log *.toc

