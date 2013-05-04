default : Plato-Paper.pdf

body.tex : body.markdown
	pandoc -w latex body.markdown > body.tex

Plato-Paper.pdf : Plato-Paper.tex body.tex
	xelatex Plato-Paper

clean:
	rm *.aux *.log

