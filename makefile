# Title: Makefile
# Date:  2021/10/15
# Name:  YingChao

# 設置編譯器
.PHONY:clean all

# target and root file name
TARGET = main

# 讀取子目錄
SUBDIRS=$(shell ls -l | grep ^d | awk '{if($$9 == "$(TARGET)") print $$9}')
OUTDIRS=$(shell ls -l | grep ^d | awk '{if($$9 == "$(BUILD_DIR)") print $$9}')

# 讀取 pdf 以外的輸出文件
OUTFILE=$(shell ls -l $(OUTDIRS) | grep ^- | awk '{if($$9 != "$(TARGET).pdf") print $$9}')

# 記住當前根目錄路徑
ROOT_DIR=$(shell pwd)

# Directories
SOURCE_DIR = main
BUILD_DIR = build

# commands to compile document
LATEX = xelatex
BIBTEX = biber		#文献データベース、あるならば.

# commands parameter

FILESYNC = -synctex=1
FILE_ERR = -file-line-error
INTERACT = -interaction=nonstopmode 
HALT_ERR = -halt-on-error
OUTP_DIR = -output-directory=$(ROOT_DIR)/$(BUILD_DIR)

TEX_Parameter = $(FILESYNC) $(FILE_ERR) $(INTERACT) $(HALT_ERR) $(OUTP_DIR)

# 宣告以下為廣域變數，使子目錄的 makefile 也能讀取以下變數
export TARGET ROOT_DIR BUILD_DIR LATEX BIBTEX TEX_Parameter

all:
	make -C $(SUBDIRS)

clean:
	@rm -rf $(OUTDIRS)

staypdf:
ifeq ($(strip $(OUTFILE)),)
	@echo "\033[1;31m檔案已清除完畢\033[0m"
else
	@echo "\033[1;31m開始清除檔案\033[0m"
	@cd $(OUTDIRS);\
	pwd;\
	echo 保留 pdf 其餘檔案刪除;\
	rm $(OUTFILE)
endif
