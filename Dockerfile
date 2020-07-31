FROM alpine:latest

# Git to fetch the tools, bash because adr-tools needs it
RUN apk --no-cache add git bash

# Clone master
RUN git clone https://github.com/npryce/adr-tools.git

# Clone a specific tag/version.
# RUN git clone --branch 3.0.0 https://github.com/npryce/adr-tools.git

ENV PATH "$PATH:/adr-tools/src"
