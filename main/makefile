# Title: Makefile
# Date:  2020/03/18
# Name:  YingChao

# source files
TEX_FILES=${wildcard *.tex}

all:
	@echo "\033[33m =========================== make a directory =========================== \033[0m"
	mkdir -p ../$(BUILD_DIR)

	@echo "\033[33m ======================== 1st compiling document ======================== \033[0m"
	@echo "\033[33m $(shell pwd) \033[0m"
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)

	@echo "\033[33m ========================= reference compiling ========================= \033[0m"
	$(BIBTEX) ../$(BUILD_DIR)/$(TARGET)

	@echo "\033[33m ======================== 2nd compiling document ======================== \033[0m"
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)
	
	@echo "\033[33m ======================== 3rd compiling document ======================== \033[0m"
	$(LATEX) $(TEX_Parameter) $(TEX_FILES)

	@echo "\033[32m ========================== Successly compiled ========================== \033[0m"
