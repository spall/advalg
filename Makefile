TEXSRC = $(wildcard ./*.tex)

inter_report: inter_report.pdf

all: inter_report.pdf

pdf: inter_report.pdf

inter_report.pdf: biblio.bib $(TEXSRC)
	pdflatex inter_report
	bibtex inter_report
	pdflatex inter_report
	pdflatex inter_report

clean: 
	\rm -f *.dvi *.aux *.ps *~ *.log *.blg *.bbl *.pdf
