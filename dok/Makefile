TEXT = gemi
SRC1 = $(TEXT).tex intro.tex header.tex ref.bib
SRC2 = unix.tex gene.tex

all: $(TEXT).pdf
$(TEXT).pdf: $(TEXT).tex $(SRC1) $(SRC2)
	bash ../skripte/getDate.sh > date.txt
	bash ../skripte/getVersion.sh > version.txt
	latex $(TEXT)
	bibtex $(TEXT)
	latex $(TEXT)
	latex $(TEXT)
	dvipdf -dALLOWPSTRANSPARENCY $(TEXT)
publish: $(TEXT).pdf
	if [ -d /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/ ]; then \
		cp $(TEXT).pdf /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/; \
	fi
%.tex: ../*/%.org $(TEXT).tex
	bash ../skripte/org2nw $< | noweave -n -x > $@
clean:
	rm -f $(TEXT).aux $(TEXT).dvi $(TEXT).log $(TEXT).pdf $(TEXT).ps $(TEXT).toc $(SRC2) version.txt date.txt
