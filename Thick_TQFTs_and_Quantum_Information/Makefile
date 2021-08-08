
PROJECT=Thick_TQFTs_and_Quantum_Information
CODE_DEPS=$(shell ls -1 *.sage | sed 's:\(.*\):build/\1.out:g')
BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 *.sty)
TEX_DEPS=$(shell ls -1 *.tex)

all: ${PROJECT}.pdf # vect.pdf functor.pdf connection.pdf scaled_mat_prod.pdf mat_prod_int_mat.pdf

build:
	if [ ! -d build ]; then mkdir build; fi

build/%.out: %
	cp $< build/$<
	cd build; sage $< 1> $<.out; cd ..

%.pdf: %.tex
	pdflatex -interaction nonstopmode -output-directory build $<
	biber --output-directory build $*
	pdflatex -interaction nonstopmode -output-directory build $<
	pdflatex -interaction nonstopmode -output-directory build $<
	cp build/$@ .

${PROJECT}.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${TEX_DEPS}\
    ${PROJECT}.tex

introduction.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    introduction.tex

mat_prod_int_mat.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    mat_prod_int_mat.tex

connection.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    connection.tex

graph.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    graph.tex

vect.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    vect.tex

functor.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    functor.tex


clean:
	rm -rf build

Clean: clean
	rm -f *.pdf

