# Title: Makefile
# Date:  2020/03/14
# Name:  YingChao

# target and root file name
TARGET = main

# 設置編譯器
.PHONY:clean all

# 讀取文件夾
SUBDIRS=$(shell ls -l | grep ^d | awk '{if($$9 == "main") print $$9}')

# 記住當前根目錄路徑
ROOT_DIR=$(shell pwd)

# Directories
SOURCE_DIR = main
BUILD_DIR = ../build

# commands to compile document
LATEX = xelatex
BIBTEX = biber

# commands parameter
TEX_Parameter = -synctex=1 -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR)


# 獲取當前目錄下的tex文件集，放在變量CUR_SOURCE中
TEX_SOURCE=${wildcard *.tex}

# 將以下變量導出到子shell中，本次相當於導出到子目錄下的makefile中
export TARGET SUBDIRS ROOT_DIR BUILD_DIR LATEX BIBTEX TEX_Parameter

all:
	make -C $(SUBDIRS)

clean:
	@rm -rf $(BUILD_DIR)
