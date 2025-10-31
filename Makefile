# Default commands for working with the MkDocs site using a local venv.

PYTHON ?= python3
VENV_DIR ?= .venv

ifeq ($(OS),Windows_NT)
VENV_BIN := $(VENV_DIR)/Scripts
else
VENV_BIN := $(VENV_DIR)/bin
endif

VENV_PYTHON := $(VENV_BIN)/python
PIP := $(VENV_PYTHON) -m pip
MKDOCS := $(VENV_BIN)/mkdocs
SITE_DIR ?= site

.PHONY: help venv serve build clean

help:
	@echo "Available targets:"
	@echo "  venv     - Create the local Python virtual environment ($(VENV_DIR))"
	@echo "  install  - Install MkDocs and dependencies inside the venv"
	@echo "  serve    - Run mkdocs serve with live reload (http://127.0.0.1:8000)"
	@echo "  build    - Build the static site into the $(SITE_DIR)/ directory"
	@echo "  clean    - Remove the generated $(SITE_DIR)/ directory"

venv:
	@if [ ! -d "$(VENV_DIR)" ]; then \
		$(PYTHON) -m venv $(VENV_DIR); \
	fi

install: $(VENV_DIR)/.installed

$(VENV_DIR)/.installed: requirements.txt | venv
	$(VENV_PYTHON) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt
	@touch $@

serve: install
	$(MKDOCS) serve

build: install
	$(MKDOCS) build --site-dir $(SITE_DIR)

clean:
	rm -rf $(SITE_DIR)
