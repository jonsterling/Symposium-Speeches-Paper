default : Plato-Paper.pdf

body.tex : body.markdown
	pandoc -w latex body.markdown > body.tex

Plato-Paper.pdf : body.tex
	xelatex Plato-Paper

