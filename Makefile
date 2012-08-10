MOCHA=$(shell which mocha || echo './node_modules/.bin/mocha')

TESTS = $(shell find test/ -name '*.tobi.js' -o -name '*.test.js')

test:
	$(MOCHA) --reporter spec $(TESTS)

.PHONY: test
