SHELL = /bin/bash
IMAGE_NAME = rdhaliwal/adr-tools
VERSION ?= latest

.PHONY: build
build: ## Create the docker image.
	$(info --- Building docker image)
	docker build -t ${IMAGE_NAME}:${VERSION} .


