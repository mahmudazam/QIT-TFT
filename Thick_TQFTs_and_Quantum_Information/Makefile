
PROJECT=Thick_TQFTs_and_Quantum_Information
CODE_DEPS=$(shell ls -1 *.sage | sed 's:\(.*\):build/\1.out:g')
BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 */*.sty)
TEX_DEPS=$(shell ls -1 *.tex */*.tex)
CWD=$(shell pwd)

all: ${PROJECT}.pdf

build:
	if [ ! -d build ]; then mkdir build; fi

build/%.out: %
	cp $< build/$<
	cd build; sage $< 1> $<.out; cd ..

%.pdf: %.tex
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\CWD{${CWD}} \input{$<}"
	biber --output-directory build $*
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\CWD{${CWD}} \input{$<}"
	pdflatex -interaction nonstopmode\
           -output-directory build\
           "\def\CWD{${CWD}} \input{$<}"
	cp build/$@ .

${PROJECT}.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${TEX_DEPS}\
    ${PROJECT}.tex

clean:
	rm -rf build

Clean: clean
	rm -f *.pdf

