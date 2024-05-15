SHELL := /bin/bash
BUNDLE := bundle
GEM := gem
VENDOR_DIR = assets/vendor/
JEKYLL := $(BUNDLE) exec jekyll

PROJECT_DEPS := Gemfile

.PHONY: all clean install update

all : serve

check:
	$(JEKYLL) doctor
	$(HTMLPROOF) --check-html \
		--http-status-ignore 999 \
		--internal-domains localhost:4000 \
		--assume-extension \
		_site

install: $(PROJECT_DEPS)
	$(GEM) install bundler -v 2.3.13
	$(BUNDLE) install --path vendor/bundler

update: $(PROJECT_DEPS)
	$(BUNDLE) update

include-submodule-deps:
	git submodule update --init --recursive
	git submodule update --remote

build: install include-submodule-deps
	$(JEKYLL) build --config _config.yml

serve: install include-submodule-deps
	JEKYLL_ENV=development $(JEKYLL) serve --incremental --config _config.yml

build_deploy: include-submodule-deps
	JEKYLL_ENV=production $(JEKYLL) build
