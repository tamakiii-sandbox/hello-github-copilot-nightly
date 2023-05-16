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
	dist/main.js \
	dist/renderer.js

clean:
	rm -rf dist

test:
	npx jest

node_modules:
	npm install

dist/main.js: src/main.ts | dist
	npx tsc

dist/renderer.js: src/renderer.ts | dist
	npx tsc --project tsconfig.renderer.json

dist:
	test -d $@ || mkdir -p $@