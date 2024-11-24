.PHONY: all build

# Docker build
build:
	docker buildx build --platform=linux/amd64 -t dinindunz/dev-container:latest .
	docker push dinindunz/dev-container:latest

# Run all tasks in sequence
all: build
