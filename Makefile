.PHONY: examples

CC=xelatex
EXAMPLES_DIR=examples
RESUME_DIR=examples/resume
CV_DIR=examples/cv
RESUME_SRCS=$(shell find examples/resume -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) $(EXAMPLES_DIR)/resume.tex