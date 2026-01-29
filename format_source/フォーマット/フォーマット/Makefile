# Makefile
#
# Kauzya Sakai
# 

# for compile
MAIN_FILE	= rejume_m2
BIBTEX = /Library/TeX/texbin/bibtex
BIB_FILE_1	= Main
PDF_OPT	= -p a4 -f cid-x.map

# for zip
TEXT_FILE = Makefile *.tex *.bib *.sty *.cls
DIR = draft_zip

all:
	platex -interaction=nonstopmode $(MAIN_FILE).tex
	platex $(MAIN_FILE).tex
	platex $(MAIN_FILE).tex
	dvipdfmx $(PDF_OPT) $(MAIN_FILE).dvi

latex:
	platex $(MAIN_FILE).tex

pdf:
	dvipdfmx $(PDF_OPT) $(MAIN_FILE).tex

bib:
	bibtex $(BIB_FILE_1)

zip_text:
	# directory
	if [ ! -d $(DIR) ]; then \
		mkdir $(DIR); \
	fi
	
	# copy files
	for var in $(TEXT_FILE); do\
		cp $$var $(DIR)/$$var; \
	done \
	
	# zip
	zip -r $(DIR) $(DIR)
	rm -r $(DIR)

clean:
	rm -f *.log *.aux *.dvi *.ind *.idx *.ilg *.bbl *.blg *.toc
