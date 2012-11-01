all: khmer_0814.pdf

khmer_0814.pdf: khmer_0814.tex
	pdflatex khmer_0814.tex
	pdflatex khmer_0814.tex
	bibtex khmer_0814
	pdflatex khmer_0814.tex

clean:
	rm *.aux *.bbl *.blg *.log *.pdf
