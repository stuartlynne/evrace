

TCPS=$(wildcard *.TCP)
TPDFS=$(subst .tcp,.pdf,${TCPS})

HUPS=$(wildcard *.hup)
DPDFS=$(subst .hup,.pdf,${HUPS})


#DOCS=$(wildcard *.doc)
#SPDFS=$(subst .doc,.pdf,${DOCS})

#VSDS=$(wildcard *.vsd)
#VPDFS=$(subst .vsd,.pdf,${VSDS})


%.pdf : %.vsd
	unoconv -f pdf $< > /dev/null 2>&1

%.pdf : %.doc
	unoconv -f pdf $< > /dev/null 2>&1

%.pdf : %.hup
	make `cat $<`
	pdfunite `cat $<` $@

%.pdf : %.tcp
	make `cat $<`
	pdfunite `cat $<` $@



all: ${VPDFS} ${SPDFS} ${DPDFS} ${TPDFS}


test:
	@echo DOCS: ${DOCS}
	@echo PDFS: ${SPDFS}
	@echo HUPS: ${HUPS}
	@echo PDFS: ${DPDFS}


CLEAN = Abbotsford EV Map Misc Notices TCP TownshipOfLangley
clean:
	-rm -f ${CLEAN}

really-clean: clean
	-rm -f *.pdf 


