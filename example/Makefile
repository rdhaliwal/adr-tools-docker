SHELL = /bin/bash

.PHONY: adr toc

adr: check-title
	docker run --rm -v "$$PWD:/doc/adr" --name adr-tools rdhaliwal/adr-tools adr new ${TITLE}

toc:
	docker run --rm -v "$$PWD:/doc/adr" --name adr-tools rdhaliwal/adr-tools adr generate toc

check-title:
ifndef TITLE
	$(error TITLE is undefined)
endif

