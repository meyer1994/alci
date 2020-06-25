.PHONY: install ci clone

clone:
	git clone https://github.com/psf/requests.git

install:
	cd requests && $(MAKE) init

ci:
	cd requests && $(MAKE) docs
	cd requests && $(MAKE) test-readme
	cd requests && $(MAKE) test
	cd requests && $(MAKE) ci
	cd requests && $(MAKE) coverage
