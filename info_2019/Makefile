CV=cv_info_2019
TITLE="Tristan Kapous Resume"

all: pdf

html:
	@echo ""
	pandoc -s --metadata pagetitle=$(TITLE) \
		-c $(CV).css \
		$(CV).md \
		-o $(CV).html

pdf: html
	@echo ""
	wkhtmltopdf --log-level none --title $(TITLE) \
		$(CV).html \
		$(CV).pdf
