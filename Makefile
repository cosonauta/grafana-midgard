SHELL := $(shell which bash)
OSTYPE := $(shell uname)
DOCKER := $(shell command -v docker)
GID := $(shell id -g)
UID := $(shell id -u)
VERSION ?= $(shell git describe --tags --always)

PROD_IMAGE_NAME ?=  ghcr.io/cosonauta/grafana-midgard
BUILD_PROD_IMAGE_CMD := IMAGE=${PROD_IMAGE_NAME} DOCKER_FILE_PATH=./Dockerfile VERSION=${VERSION} ./scripts/build-image.sh
PUBLISH_PROD_IMAGE_CMD := IMAGE=${PROD_IMAGE_NAME} VERSION=${VERSION} ./scripts/publish-image.sh
VALIDATE_JSON_CMD :=  ./scripts/validate-json.sh

help: ## Show this help
	@echo "Help"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[93m %s\n", $$1, $$2}'

.PHONY: default
default: help

.PHONY: build-image
build-image: ## Builds the production docker image.
	@$(BUILD_PROD_IMAGE_CMD)

publish-image: ## Pushes the production docker image.
	@$(PUBLISH_PROD_IMAGE_CMD)

check: ## Checks the dashboards.
	@$(VALIDATE_JSON_CMD)