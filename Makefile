all: pdf html

html:
	pandoc -s --metadata pagetitle="tk" -c cv_info_2020.css cv_info_2020.md -o cv_info_2020.html

pdf:
	wkhtmltopdf cv_info_2020.html cv_info_2020.pdf
