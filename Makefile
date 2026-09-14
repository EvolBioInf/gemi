all: spielplatz spielplatz/malGene.awk spielplatz/text.tex
spielplatz:
	test -d spielplatz || mkdir spielplatz
spielplatz/malGene.awk: spielplatz skripte/malGene.awk
	cp skripte/malGene.awk spielplatz
spielplatz/text.tex: spielplatz gene/text.tex
	cp gene/text.tex spielplatz
dok:
	make -C dok
