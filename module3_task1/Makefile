build: ## Compile the source code of the application to a binary name file using the command go build
	hugo
	make lint
	go build

post: ## Creates new post
    /path/to/hugo new posts/$(POST_NAME).md
    sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean: ## Cleans `dist` folder
	rm -rf dist/*

help: ## Shows available targets and descriptions
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
