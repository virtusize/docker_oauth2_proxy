NAME = virtusize/docker_oauth2_proxy
VERSION ?= unprivileged-user

.PHONY: all build

all: build

build:
	 docker build -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)