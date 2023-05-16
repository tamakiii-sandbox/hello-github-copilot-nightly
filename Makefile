.PHONY: help install uninstall launch build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

uninstall:
	rm -rf node_modules

launch:
	npx electron dist/main.js

build: \
	dist/index.html \
	dist/main.js

clean:
	rm -rf dist/main.js
	rm -rf dist/index.html

node_modules:
	npm install

dist/index.html: src/index.html
	cp $< $@

dist/main.js: src/main.ts | dist
	npx tsc

dist:
	test -d $@ || mkdir -p $@