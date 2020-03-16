# Title: Makefile
# Date:  2020/03/17
# Name:  YingChao

# source files
TEX_FILES=${wildcard *.tex}

all:
	@echo =============== make a directory ===============
	mkdir -p $(BUILD_DIR)
	@echo ========== first commpiling document ==========
	@echo $(shell pwd)
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)
	@echo ============= reference commpiling =============
	#文献データベース、あるならば.
	$(BIBTEX) $(BUILD_DIR)/$(TARGET)
	@echo ========== second commpiling document ==========
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)
	@echo =========== third commpiling document ==========
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)