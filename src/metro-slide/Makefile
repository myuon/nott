FILE = ./slide.md

compile:
	docker run --rm -v `pwd`:/data compiler -o output.pdf --latex-engine=pdflatex -t beamer -V theme:metropolis ${FILE}

build:
	docker build . -t compiler
