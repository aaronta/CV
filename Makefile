TARGET=cv
PDF_TARGET=$(addsuffix .pdf,$(TARGET))

default: pdf

#pdf: $(PDF_TARGET)

## %.pdf: %.tex
## 	#lualatex -interaction=batchmode $<
## 	#lualatex -interaction=batchmode $<
## 	xelatex -interaction=batchmode $<
## 	bibtex $<
## 	xelatex -interaction=batchmode $<

pdf:
	xelatex -interaction=batchmode ${TARGET}
	bibtex journal.aux
	bibtex conference.aux
	bibtex seminar.aux
	xelatex -interaction=batchmode ${TARGET}

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf
