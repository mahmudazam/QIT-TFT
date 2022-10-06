
SHELL=/bin/zsh
PROJECT=TQFT_QC
BIB_DEPS=$(shell ls -1 *.bib)
TEX_DEPS=$(shell ls -1 *.tex)

all: ${PROJECT}.pdf

%.pdf: %.tex build ${BIB_DEPS} ${TEX_DEPS}
	pdflatex -interaction nonstopmode TQFT_QC.tex
	bibtex TQFT_QC
	pdflatex -interaction nonstopmode TQFT_QC.tex
	pdflatex -interaction nonstopmode TQFT_QC.tex

build:
	if [ ! -d build ]; then mkdir build; fi

clean:
	rm -rf build

Clean: clean
	rm -f ${PROJECT}.pdf abstract.pdf

