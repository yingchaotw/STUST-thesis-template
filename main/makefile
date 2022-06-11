# Title: Makefile
# Date:  2022/06/11
# Name:  YingChao

# source files
TEX_FILES=${wildcard *.tex}
XDV_FILES = ../$(BUILD_DIR)/${MAINDOC}.xdv

all:
	@echo "\033[33m $(shell pwd) \033[0m"
	@make xetex		# 1st commpiling
	@make bibtex	# reference commpiling
	@make xetex		# 2nd commpiling
	@make xetex		# 3rd commpiling 
	@make pdf		# PDF Genrate
	@echo "\033[32m  Successly compiled  \033[0m"

xetex:
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)

bibtex:
	$(BIBTEX) ../$(BUILD_DIR)/$(MAINDOC)

pdf:
	$(MAKEPDF) $(xDVI_PDFMx) $(XDV_FILES)