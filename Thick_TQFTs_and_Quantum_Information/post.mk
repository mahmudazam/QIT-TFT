
build:
	if [ ! -d build ]; then mkdir build; fi

build/%.out: %
	cp $< build/$<
	cd build; sage $< 1> $<.out; cd ..

clean:
	rm -rf build

Clean: clean
	rm -f *.pdf *.bbl *.blg *.aux *.out *.log *.toc

