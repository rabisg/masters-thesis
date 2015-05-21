all: thesis.pdf

thesis.pdf: $(wildcard *.tex) $(wildcard *.cls) citations.bib $(wildcard hs/*.[l]hs)
	latexmk -pdf -shell-escape thesis.tex

clean:
	latexmk -C
	rm -rf auto/
	rm thesis.{pyg,run.xml}
	rm _region_.*

.PHONY: all clean
