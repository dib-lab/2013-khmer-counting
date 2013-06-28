all: khmer-counting.pdf tutorial.html

khmer-counting.pdf: khmer-counting.tex
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex
	bibtex khmer-counting
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex

tutorial.html: tutorial.rst
	rst2html.py tutorial.rst tutorial.html

clean:
	rm *.aux *.bbl *.blg *.log *.pdf
