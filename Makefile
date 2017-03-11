
TEX=pdflatex
MAIN=nd-stable
MAINFILE=$(MAIN).pdf
BIBFILE=ref.bib
TEXFILES :=  $(wildcard *.tex)

all: $(MAINFILE)

.PHONY: $(MAINFILE) all clean

$(MAINFILE): $(BIBFILE) $(TEXFILES)
	$(TEX) $(MAIN)
	bibtex $(MAIN)
	$(TEX) $(MAIN)
	$(TEX) $(MAIN)

clean:
	rm -f *.aux *.log *.err *.bbl *.toc *.blg
