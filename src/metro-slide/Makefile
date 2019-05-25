FILE = ./slide.md

compile:
	docker run --rm -v `pwd`:/data compiler -o output.pdf --latex-engine=pdflatex -t beamer -V theme:metropolis ${FILE}

watch:
	while true; do \
		make compile; \
		inotifywait -qre close_write .; \
	done

build:
	docker build . -t compiler
