.PHONY: help bash clean

ORGANIZATION:= tamakiii-sandbox
REPOSITORY := $(notdir $(shell git rev-parse --show-toplevel))
IMAGE := $(ORGANIZATION)/$(REPOSITORY)

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(IMAGE) .

bash: build
	docker run -it --rm -v $(PWD):/opt/$(ORGANIZATION)/$(REPOSITORY) -w /opt/$(ORGANIZATION)/$(REPOSITORY) $(IMAGE) bash

clean:
	docker image rm $(IMAGE)