# ADR Tools Docker Image

## What?

- This is a docker-ified version of https://github.com/npryce/adr-tools
- This was also a learning exercise for me to get familiar with creating and distributing docker images

## Why?

- Wanted to create a "simple" and "install-free" way to use the excellent [`adr-tools`](https://github.com/npryce/adr-tools)
  - Yes, I know you have to install Docker to use this.
  - Yes, I know the commands below aren't exactly simple.

## How?

### Using the image
- Run `docker run --rm -v "$PWD:/doc/adr" --name adr-tools rdhaliwal/adr-tools adr help` to see a full list of available adr commands
  - You can replace `$PWD` with wherever you want any generated files to go on your host filesystem.
  - Run `docker run --rm -v "$PWD:/doc/adr" --name adr-tools rdhaliwal/adr-tools adr new Really Cool Idea` to generate a new ADR file
  - Run `docker run --rm -v "$PWD:/doc/adr" --name adr-tools rdhaliwal/adr-tools adr generate toc` to generate a table of contents. This is based off of whatever ADRs it can find in `$PWD`

### Building the image

- Clone this repo and `cd` into it
- Run `docker build -t rdhaliwal/adr-tools:latest .` to build the image locally
- Run `docker run -ti rdhaliwal/adr-tools bash` to start the container and open a bash console in it. 
  - From here, you can try whatever commands you like if you're trying to figure out what tools are available in the image
- Run `docker push rdhaliwal/adr-tools:latest` to push the image to docker hub
  - If pushing a specific version, remember to edit the `Dockerfile` with the correct version of `adr-tools`, then replace the `latest` with a tag number when building and pushing to docker hub

## Where?

- Docker image is available here: [https://hub.docker.com/r/rdhaliwal/adr-tools](https://hub.docker.com/r/rdhaliwal/adr-tools)
- GitHub repository for adr-tools available here:  [https://github.com/npryce/adr-tools](https://github.com/npryce/adr-tools)
- GitHub repository for dockerfile adr-tools:  [https://github.com/rdhaliwal/adr-tools](https://github.com/rdhaliwal/adr-tools)
