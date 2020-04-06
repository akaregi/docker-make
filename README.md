# docker-make

## Requirements

* Windows
* Docker
* GNU Make

## Dockerfile

Very plain file, using `alpine:latest` image.

## Make

* `NAME` and `VERSION` must be specified in `Makefile`.

```bash
# Builds a image from Dockerfile
make build

# Removes the image
make clean

# Starts a container from the generated image
make start

# Stops the container
make stop

# Attaches to the container
make attach
```
