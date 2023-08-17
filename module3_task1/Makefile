build: ## Compile the source code of the application to a binary name file using the command go build
	hugo
	make lint
	go build

post: ## Creates new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean: ## Cleans `dist` folder
	rm -rf dist/*

help: ## Shows available targets and descriptions
	make build  # Replace the original `make help` command
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
