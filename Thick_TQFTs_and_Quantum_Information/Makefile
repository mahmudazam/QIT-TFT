
PROJECT=Thick_TQFTs_and_Quantum_Information
CODE_DEPS=$(shell ls -1 *.sage | sed 's:\(.*\):build/\1.out:g')
BIB_DEPS=$(shell ls -1 *.bib)
STY_DEPS=$(shell ls -1 *.sty)
TEX_DEPS=$(shell ls -1 *.tex)

all: mon_bicat_cob.pdf # ${PROJECT}.pdf scaled_mat_prod.pdf mat_prod_int_mat.pdf

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

scaled_mat_prod.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    scaled_mat_prod.tex

mat_prod_int_mat.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    mat_prod_int_mat.tex

mon_bicat_cob.pdf:\
    build\
    ${BIB_DEPS}\
    ${STY_DEPS}\
    ${PROJECT}.tex\
    glue_assoc.tex\
    mon_bicat_cob.tex

clean:
	rm -rf build

Clean: clean
	rm -f *.pdf

