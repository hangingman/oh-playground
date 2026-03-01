.PHONY: dev stop help

.DEFAULT_GOAL := help

help: ## Show this help.
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\x1b[36m%-20s\x1b[0m %s\n", $$1, $$2}'

dev: ## Start the development environment and cleanup prune images.
	DOCKER_BUILDKIT=1 docker compose up -d --build && \
	docker image prune -f

stop: ## Stop the development environment.
	docker compose stop
