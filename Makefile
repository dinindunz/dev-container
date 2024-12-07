.PHONY: all build push

build:
	docker buildx build --platform=linux/amd64 -t dinindunz/dev-container:latest .

push:
	docker push dinindunz/dev-container:latest

all: build push
