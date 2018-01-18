.DEFAULT_GOAL := help

.PHONY: all
all: help

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  help        to print this help message. (Default)"
	@echo "  pdf     		 to generate a pdf."
	@echo "  clean     		 to clean temporary files."

.PHONY: pdf
pdf:
	@echo "Generating a PDF document ..."
	@pdflatex cp4cds

.PHONY: clean
clean:
	@echo "Cleaning workspace ..."
	@git diff --quiet HEAD || echo "There are uncommited changes! Not doing 'git clean' ..."
	@-git clean -dfx
