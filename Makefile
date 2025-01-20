# Build the website residing in docs/
.PHONY: build
build:
	mkdir -p docs/img
	dot -Tpng shouldi.dot -o docs/img/shouldi.png
