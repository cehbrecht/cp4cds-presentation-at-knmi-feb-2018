.DEFAULT_GOAL := help

.PHONY: all
all: help

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  help				to print this help message. (Default)"
	@echo "  pdf				to generate a pdf."
	@echo "  clean      to clean temporary files."
	@echo "  distclean  to clean all unversioned files."

.PHONY: pdf
pdf:
	@echo "Generating a PDF document ..."
	@pdflatex cp4cds-for-magic-workshop-20180201

.PHONY: clean
clean:
	@echo "Cleaning temporary files ..."
	@-rm -f *.aux *.bbl *.blg *.log *.fls *.fdb_latexmk *.synctex.gz *.out *.nav *.snm *.toc

.PHONY: distclean
distclean:
	@echo "Cleaning workspace ..."
	@git diff --quiet HEAD || echo "There are uncommited changes! Not doing 'git clean' ..."
	@-git clean -dfx
