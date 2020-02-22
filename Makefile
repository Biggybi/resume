FOLDER=info_2019
OUT=tristan_kapous_cv
TITLE="Tristan Kapous Resume"
PDFFILE=$(OUT)

INFO=cv_info_2019

HTMLFILE=$(FOLDER)/$(FOLDER).html

all: $(FOLDER)/$(PDFFILE)

$(HTMLFILE):
	@echo "Building html..."
	@cd $(FOLDER) && \
	pandoc -s --metadata pagetitle=$(TITLE) \
		-c $(FOLDER).css \
		$(FOLDER).md \
		-o $(FOLDER).html

$(FOLDER)/$(PDFFILE): $(HTMLFILE)
	@echo "Building pdf..."
	@cd $(FOLDER) && \
	wkhtmltopdf --log-level none --title $(TITLE) \
		--margin-top 0 \
		--margin-bottom 0 \
		$(FOLDER).html \
		$(FOLDER).pdf

info: FOLDER=$(INFO)

info: all
	@cp $(FOLDER)/$(FOLDER).pdf $(OUT).pdf
	@cp $(FOLDER)/$(FOLDER).html $(OUT).html

lol: FOLDER=lol
lol: all
	@cp $(FOLDER)/$(FOLDER).pdf $(OUT).pdf
	@cp $(FOLDER)/$(FOLDER).html $(OUT).html

clean:
	@echo "Delete nested html and pdf"
	@rm -rf */*.html
	@rm -rf */*.pdf
