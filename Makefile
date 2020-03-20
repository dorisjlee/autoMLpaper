TEX=pdflatex
BIBTEX=bibtex
DOC := main
BIB := reference.bib
SRCS := $(wildcard *.tex) $(BIB) $(FIGS) Makefile

ALL := $(DOC).pdf

all : 
	$(TEX) $(DOC).tex 
# 	$(BIBTEX) $(DOC)
# 	$(TEX) $(DOC)
# 	$(TEX) $(DOC)
figs :
	mkdir -p figs
clean:  
	rm -f $(ALL) *.bbl *.blg *.log *.aux *.out *.run.xml
