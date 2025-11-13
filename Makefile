.PHONY: help build up down restart logs clean shell install dev prod

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build the Docker image
	docker-compose build

up: ## Start the development server
	docker-compose up

down: ## Stop all containers
	docker-compose down

restart: ## Restart all containers
	docker-compose restart

logs: ## Show container logs
	docker-compose logs -f

clean: ## Clean up Docker containers, images, and generated files
	docker-compose down -v
	docker system prune -f
	rm -rf _site .jekyll-cache

shell: ## Open a shell in the Jekyll container
	docker-compose exec jekyll bash

install: ## Install dependencies (Ruby gems and npm packages)
	docker-compose run --rm jekyll bundle install
	docker-compose run --rm jekyll npm install

dev: ## Start with live CSS watching
	docker-compose --profile dev up

prod: ## Build for production
	docker-compose run --rm -e JEKYLL_ENV=production jekyll bash -c "npm run build:css && bundle exec jekyll build"

