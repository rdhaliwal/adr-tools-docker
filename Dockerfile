FROM alpine:latest

# Git to fetch the tools, bash because adr-tools needs it
RUN apk --no-cache add git bash
RUN git clone https://github.com/npryce/adr-tools.git
