SHELL = /bin/bash
IMAGE_NAME = rdhaliwal/adr-tools
VERSION ?= latest

## Create the docker image.
.PHONY: build
build:
	$(info --- Building docker image)
	docker build -t ${IMAGE_NAME}:${VERSION} .

## Tag the docker images with the build information.
.PHONY: tag
tag:
	$(info --- Tagging docker image with ${VERSION})
	docker image tag ${IMAGE_NAME}:${VERSION} ${IMAGE_NAME}:${VERSION}

## Push the docker image to the registry.
.PHONY: push
push: tag
	$(info --- Pushing to docker registry)
	docker image push ${IMAGE_NAME}:${VERSION}

## Remove any local images related to this project
.PHONY: clean
clean:
	$(info --- Deleting local image)
	@docker remove ${IMAGE_NAME} &> /dev/null || true

