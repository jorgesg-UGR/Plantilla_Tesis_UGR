###############################################################################
# Makefile
###############################################################################

all: $(PDF)
	cat Bib/*.bib > tesis.bib
	cat glosario/*.tex > glosario.tex
	#pdflatex -shell-escape tesis.tex 
	pdflatex -shell-escape tesis.tex 
	#bibtex tesis
	biber tesis  
	#pdflatex -shell-escape tesis.tex
	#pdflatex -shell-escape tesis.tex
	makeglossaries tesis
	pdflatex -shell-escape tesis.tex
	#cp tesis.pdf /var/www/ws/tesis/tesis.pdf
	#/var/www/ws/tesis/splitPDF.sh
	#mv capitulo*pdf /var/www/ws/tesis/

clean:
	$(RM) *.aux *.bbl *.blg *.tdo *.spl *~ *.log *. *.gls *.glo *.glg
	$(RM) FrontBackmatter/*.aux FrontBackmatter/*.bbl FrontBackmatter/*.blg FrontBackmatter/*.tdo FrontBackmatter/*.spl FrontBackmatter/*~ FrontBackmatter/*.log *.
	$(RM) Capitulos/*.aux Capitulos/*.bbl Capitulos/*.blg Capitulos/*.tdo Capitulos/*.spl Capitulos/*~ Capitulos/*.log Capitulos/*.
	$(RM) Capitulos/c*/*.aux Capitulos/c*/*.bbl Capitulos/c*/*.blg Capitulos/c*/*.tdo Capitulos/c*/*.spl Capitulos/c*/*~ Capitulos/c*/*.log Capitulos/c*/*.

###############################################################################

###############################################################################

.NOEXPORT:

###############################################################################

