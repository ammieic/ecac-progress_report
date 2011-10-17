LATEX = latex
BIBTEX = bibtex
DVIPDF = dvipdf
RM = rm -f

MAIN = report 
TARGET = $(MAIN).pdf
DVI = $(MAIN).dvi

SOURCE = report.tex

all : $(TARGET)

$(TARGET) : $(DVI)
	$(DVIPDF) $(MAIN)

$(DVI) : $(SOURCE)
	$(LATEX) $(MAIN)
	-$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean :
	$(RM) *.aux *.bbl *.blg *.dvi *.log *~

distclean :
	$(RM) $(TARGET)
