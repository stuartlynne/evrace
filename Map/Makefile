

VSDS=$(wildcard *.vsd)
DOCS=$(wildcard *.doc)
VPDFS=$(subst .doc,.pdf,${VSDS})
TPDFS=$(subst .doc,.pdf,${DOCS})

%.pdf : %.doc
	unoconv -f pdf $< > /dev/null 2>&1
	pdfunite $@ ../Misc/TCP-Marshal-info.pdf Full-$@

%.pdf : %.vsd
	unoconv -f pdf $< > /dev/null 2>&1



all:  ${TPDFS} ${VPDFS}


test:
	@echo PDFS: ${TPDFS}


CLEAN = *.pdf
clean:
	-rm -f ${CLEAN}

really-clean: clean
	-rm -f *.pdf 


