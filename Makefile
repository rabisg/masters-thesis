all: thesis.pdf

thesis.pdf: $(wildcard *.tex) $(wildcard *.cls) citations.bib $(wildcard hs/*.hs) $(wildcard hs/*.lhs)
	latexmk -pdf -shell-escape thesis.tex

clean:
	latexmk -C
	rm -rf auto/
	rm -f thesis.{pyg,run.xml,bbl,lol,lop}
	rm -f _region_.*
	
.PHONY: all clean
