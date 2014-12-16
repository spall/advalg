TEXSRC = $(wildcard ./*.tex)

final_report: final_report.pdf

all: final_report.pdf

pdf: final_report.pdf

final_report.pdf: biblio.bib $(TEXSRC)
	pdflatex final_report
	bibtex final_report
	pdflatex final_report
	pdflatex final_report

clean: 
	\rm -f *.dvi *.aux *.ps *~ *.log *.blg *.bbl *.pdf
