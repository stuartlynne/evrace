

HUPS=$(wildcard *.hup)
DPDFS=$(subst .hup,.pdf,${HUPS})


#DOCS=$(wildcard *.doc)
#SPDFS=$(subst .doc,.pdf,${DOCS})

#VSDS=$(wildcard *.vsd)
#VPDFS=$(subst .vsd,.pdf,${VSDS})


%.pdf : %.vsd
	unoconv -f pdf $<

%.pdf : %.doc
	unoconv -f pdf $<

%.pdf : %.hup
	make `cat $<`
	pdfunite `cat $<` $@



all: ${VPDFS} ${SPDFS} ${DPDFS}


test:
	@echo DOCS: ${DOCS}
	@echo PDFS: ${SPDFS}
	@echo HUPS: ${HUPS}
	@echo PDFS: ${DPDFS}

clean:
	-rm -f */*.pdf

really-clean: clean
	-rm -f *.pdf 


