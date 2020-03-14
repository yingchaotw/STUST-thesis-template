# Title: Makefile
# Date:  2020/03/14
# Name:  YingChao

# target and root file name
TARGET = main

# Directories
BUILD_DIR = build

# commands to compile document
LATEX = xelatex

BIB = biber

# commands parameter
TEX_Parameter = -halt-on-error -output-directory=$(BUILD_DIR)

# source files
TEX_FILES = $(TARGET).tex

all:
	@echo =============== make a directory ===============
	mkdir -p $(BUILD_DIR)
	@echo ========== first commpiling document ==========
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)
	@echo ============= reference commpiling =============
	#文献データベース、あるならば.
	$(BIB) $(BUILD_DIR)/$(TARGET)
	@echo ========== second commpiling document ==========
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)

clean:
	rm -rf $(BUILD_DIR)
