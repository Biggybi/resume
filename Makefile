CV=cv_info_2019
CV_OUT=tristan_kapous_cv.pdf
TITLE="Tristan Kapous Resume"

all: info_pdf

info_html:
	cd $(CV) && \
	pandoc -s --metadata pagetitle=$(TITLE) \
		-c $(CV).css \
		$(CV).md \
		-o $(CV).html

info_pdf: info_html
	@echo ""
	cd $(CV) && \
	wkhtmltopdf --log-level none --title $(TITLE) \
		$(CV).html \
		$(CV_OUT)
