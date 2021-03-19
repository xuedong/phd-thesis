all:
	pdflatex Thesis.tex

final:
	pdflatex Thesis.tex
	biber Thesis
	bibtex Chapter1/Chapter1.tex
	bibtex Chapter2.tex
	makeglossaries Thesis
	makeindex Thesis
	pdflatex Thesis.tex
	pdflatex Thesis.tex

clean:
	rm -f *.aux *.mtc* *.out *.idx *.bcf *.log *~ *.ptc *.toc *.run.xml *.maf *.dvi *.acn *.glo *.lof *.lot *.alg *.glg *.gls *.nlg *.xdy *.acr *.ntn *not *.fls *.fdb_latexm *.fls *.fdb_latexmk
