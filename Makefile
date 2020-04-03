NAME=project
VERSION=latest

.PHONY: build
build:
	docker build --tag $(NAME):$(VERSION) .

.PHONY: start
start:
	docker run --interactive --tty --detach --name $(NAME) $(NAME):$(VERSION) ash

.PHONY: stop
stop:
	docker rm --force $(NAME)

.PHONY: attach
attach:
	docker exec -it $(NAME) /bin/ash

.PHONY: clean
clean:
	docker rmi --force $(NAME)
