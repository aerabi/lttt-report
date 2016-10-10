# Latex Makefile using latexmk
# Modified by Dogukan Cagatay <dcagatay@gmail.com>
# Modified by Philipp Jund
# Originally from : http://tex.stackexchange.com/a/40759


PROJNAME=thesis_main
.PHONY: $(PROJNAME).pdf all clean

all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -outdir=out -pdf -use-make -file-line-error $<
	cp out/$(PROJNAME).pdf $(PROJNAME).pdf

cleanall:
	latexmk -outdir=out/ -C

clean:
	latexmk -outdir=out/ -c