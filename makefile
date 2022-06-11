# Title: Makefile
# Date:  2021/10/15
# Name:  YingChao


# Document Name
MAINDOC  = main

# Directories
BUILD_DIR = build

# target and root file name
OUTPDF = template
TARGET = ${BUILD_DIR}/${OUTPDF}.pdf

# 讀取子目錄
SUBDIRS=$(shell ls -l | grep ^d | awk '{if($$9 == "$(MAINDOC)") print $$9}')
OUTDIRS=$(shell ls -l | grep ^d | awk '{if($$9 == "$(BUILD_DIR)") print $$9}')

# 記住當前根目錄路徑
ROOT_DIR=$(shell pwd)

# commands to compile document
LATEX   = xelatex
MAKEPDF = xdvipdfmx
BIBTEX  = biber		#文献データベース、あるならば.

# commands parameter
FILESYNC = -synctex=1
FILE_ERR = -file-line-error
INTERACT = -interaction=nonstopmode 
HALT_ERR = -halt-on-error
NONE_PDF = -no-pdf
OUTP_DIR = -output-directory=$(ROOT_DIR)/$(BUILD_DIR)
OUTP_DRV = -output-driver='xdvipdfmx -z0'

xDVI_PDFMx = -E -o $(OUTPDF).pdf

TEX_Parameter = $(FILESYNC) $(FILE_ERR) $(INTERACT) $(HALT_ERR) $(NONE_PDF) $(OUTP_DIR) $(OUTP_DRV)

# 宣告以下為廣域變數，使子目錄的 makefile 也能讀取以下變數
export MAINDOC ROOT_DIR BUILD_DIR LATEX BIBTEX TEX_Parameter
export MAKEPDF xDVI_PDFMx OUTPDF

all: ${TARGET}

${TARGET}:
	@echo "\033[33m make a directory \033[0m"
	@mkdir -p $(BUILD_DIR)
	make -C $(SUBDIRS)

clean:
	@rm -rf $(OUTDIRS)
	@rm -f $(SUBDIRS)/*.pdf

staypdf:
	@rm -rf $(OUTDIRS)


.PHONY: clean all
