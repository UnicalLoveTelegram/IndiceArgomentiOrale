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
MDFORMAT := $(VENV_BIN)/mdformat
SITE_DIR ?= site

.PHONY: help venv serve build clean lint lint-fix install

help:
	@echo "Available targets:"
	@echo "  venv     - Create the local Python virtual environment ($(VENV_DIR))"
	@echo "  install  - Install MkDocs and dependencies inside the venv"
	@echo "  serve    - Run mkdocs serve with live reload (http://127.0.0.1:8000)"
	@echo "  build    - Build the static site into the $(SITE_DIR)/ directory"
	@echo "  lint     - Check Markdown files for style issues"
	@echo "  lint-fix - Auto-fix Markdown formatting issues"
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
	$(MKDOCS) serve --livereload --watch docs --dirtyreload

build: install
	$(MKDOCS) build --site-dir $(SITE_DIR)

lint: install
	@echo "Running Markdown linter..."
	@$(MDFORMAT) --check docs/ README.md CONTRIBUTING.md || (echo "Linting failed! Run 'make lint-fix' to fix issues automatically." && exit 1)
	@echo "✓ All files passed linting!"

lint-fix: install
	@echo "Fixing Markdown issues..."
	@$(MDFORMAT) docs/ README.md CONTRIBUTING.md
	@echo "✓ Markdown issues fixed!"

clean:
	rm -rf $(SITE_DIR)