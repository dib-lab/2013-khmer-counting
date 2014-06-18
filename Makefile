all: khmer-counting.pdf

khmer-counting.pdf: khmer-counting.tex khmer-counting.bib
	pdflatex khmer-counting.tex
	bibtex khmer-counting
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex


clean:
	rm *.aux *.bbl *.blg *.log *.pdf

plosone:
	mv khmer-counting.tex khmer-counting.tex.temp
	cp khmer-counting-plosone.tex khmer-counting.tex
	pdflatex khmer-counting.tex
	bibtex khmer-counting
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex
	mv khmer-counting.pdf khmer-counting-plosone.pdf
	mv khmer-counting.tex.temp khmer-counting.tex
	pdflatex khmer-counting.tex
	bibtex khmer-counting
	pdflatex khmer-counting.tex
	pdflatex khmer-counting.tex
	
	
