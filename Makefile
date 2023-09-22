.PHONY: requirements install

SHORT=$(shell git rev-parse --short HEAD)

requirements:
	# Compile locked requirements files
	rm -f requirements.txt
	pip-compile --output-file=requirements.txt requirements.in --resolver=backtracking

install:
	# Install requirements
	pip-sync requirements.txt

