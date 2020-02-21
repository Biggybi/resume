CV=cv_info_2020
TITLE="Tristan Kapous Resume"
all: pdf

html:
	pandoc -s --metadata pagetitle=$(TITLE) -c $(CV).css $(CV).md -o $(CV).html

pdf: html
	wkhtmltopdf -q --title $(TITLE) $(CV).html $(CV).pdf
