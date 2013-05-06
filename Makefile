default : Plato-Paper.pdf

body.tex : body.markdown
	pandoc -w latex body.markdown > body.tex

Plato-Paper.aux : Plato-Paper.tex body.tex
	xelatex Plato-Paper

Plato-Paper.blg : Plato-Paper.aux Plato-Paper.bib
	bibtex Plato-Paper

Plato-Paper.pdf : Plato-Paper.tex body.tex Plato-Paper.blg
	xelatex Plato-Paper
	xelatex Plato-Paper

clean:
	rm *.aux *.log *.bbl *.blg

