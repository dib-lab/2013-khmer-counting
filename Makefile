all: khmer-counting.pdf

khmer-counting.pdf: khmer-counting.tex
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex
	bibtex khmer-counting
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex

clean:
	rm *.aux *.bbl *.blg *.log *.pdf
