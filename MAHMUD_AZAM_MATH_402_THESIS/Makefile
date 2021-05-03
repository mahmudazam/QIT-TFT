
PROJECT=MAHMUD_AZAM_MATH_402_THESIS
CODE_DEPS=$(shell ls -1 *.sage | sed 's:\(.*\):build/\1.out:g')
BIB_DEPS=$(shell ls -1 */*.bib)
STY_DEPS=$(shell ls -1 */*.sty)
TEX_DEPS=$(shell ls -1 */*.tex)

all: ${PROJECT}.pdf

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

clean:
	rm -rf build

Clean: clean
	rm -f ${PROJECT}.pdf

