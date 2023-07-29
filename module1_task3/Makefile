.PHONY: ## build clean post

build: ## Build hugo website
	hugo -d dist

clean: ## Delete dist folder
	rm -rf dist/*

post: ## Create a new blog post with the given title and filename
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'