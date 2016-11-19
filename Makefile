all: waxc.pdf waxc1.py

waxc.pdf: waxc.nw
	noweave -index $< > waxc.tex
	pdflatex waxc.tex
	pdflatex waxc.tex

%.py: waxc.nw
	notangle -R$@ $< > $@

clean:
	rm -f waxc.tex waxc.aux waxc.log waxc.pdf
	rm -f waxc*.py

.PHONY: clean
