.PHONY: help install uninstall launch build clean test

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

uninstall:
	rm -rf node_modules

launch:
	npx electron dist/main.js

build: \
	dist/main.js

clean:
	rm -rf dist

test:
	npx jest

node_modules:
	npm install

dist/main.js: src/main.ts | dist
	npx tsc

dist:
	test -d $@ || mkdir -p $@