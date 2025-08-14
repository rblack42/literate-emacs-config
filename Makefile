EMACS ?= emacs

TEST_DIR = $(shell pwd)/test
LIB_DIR = $(shell pwd)/lib
# Run all tests by default.
MATCH ?=

.PHONY: test

test:
	$(EMACS) -batch -L $(LIB_DIR) -L $(TEST_DIR) -l all-tests.el -eval \
		'(ert-run-tests-batch-and-exit "$(MATCH)")'
