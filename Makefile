.DEFAULT: all

.PHONY: all pdf html pptx clean

all: pdf html pptx

pdf: veraison-slides.pdf

html: veraison-slides.html

pptx: veraison-slides.pptx

veraison-slides.pdf: veraison-slides.md images/*
	marp veraison-slides.md --allow-local-files --html --pdf --pdf-notes

veraison-slides.html: veraison-slides.md images/*
	marp veraison-slides.md --allow-local-files --html

veraison-slides.pptx: veraison-slides.md images/*
	marp veraison-slides.md --allow-local-files --html --pptx


clean:
	$(RM) -f *.pdf *.html *.pptx
