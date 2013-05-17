

DOCS=$(wildcard *.doc)
TPDFS=$(subst .doc,.pdf,${DOCS})

%.pdf : %.doc
	unoconv -f pdf $< > /dev/null 2>&1
	pdfunite $@ ../Misc/TCP-Marshal-info.pdf Full-$@



all:  ${TPDFS}


test:
	@echo PDFS: ${TPDFS}


CLEAN = *.pdf
clean:
	-rm -f ${CLEAN}

really-clean: clean
	-rm -f *.pdf 


