CV=cv_info_2020

all: pdf

html:
	pandoc -s --metadata pagetitle="tk" -c $(CV).css $(CV).md -o $(CV).html

pdf: html
	wkhtmltopdf $(CV).html $(CV).pdf
