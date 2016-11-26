all: waxc.pdf waxc0.py

waxc.pdf: waxc.nw
	noweave -delay -index $< > waxc.tex
	pdflatex waxc.tex
	pdflatex waxc.tex

%.py: waxc.nw
	notangle -R$@ $< > $@

clean:
	rm -f *.log *.aux *.tex *.pdf *.out
	rm -f waxc*.py

.PHONY: clean
