PROJECT=SC
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)
    
clean:
	rm -rf $(PROJECT).aux $(PROJECT).bbl  $(PROJECT).blg *.log $(PROJECT).pdf $(PROJECT).ps


