SHELL = /bin/bash
IMAGE_NAME = rdhaliwal/adr-tools
VERSION ?= latest

.PHONY: build
## Create the docker image.
build:
	$(info --- Building docker image)
	docker build -t ${IMAGE_NAME}:${VERSION} .

.PHONY: tag
## Tag the docker images with the build information.
tag: build
	$(info --- Tagging docker image with ${VERSION})
	docker image tag ${IMAGE_NAME}:${VERSION} ${IMAGE_NAME}:${VERSION}

.PHONY: push
## Push the docker image to the registry.
push: tag
	$(info --- Pushing to docker registry)
	docker image push ${IMAGE_NAME}:${VERSION}


