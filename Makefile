.PHONY: install ci clone

clone:
	git clone https://github.com/psf/requests.git

install:
	cd requests && $(MAKE) init

test:
	cd requests && $(MAKE) test-readme
	cd requests && $(MAKE) ci
