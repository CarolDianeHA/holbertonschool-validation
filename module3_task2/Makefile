build: ## Compile the source code of the application to a binary name file using the command go build
	hugo

post: ## Creates new post
	if [ -f content/posts/$(POST_NAME).md ]; then \
		echo "Post file already exists"; \
	else \
		hugo new content/posts/$(POST_NAME).md; \
		sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md; \
	fi

clean: ## Cleans `dist` folder
	rm -rf dist/*

help: ## Shows available targets and descriptions
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'##

package: ## Build the awesome-website.zip archive.
	zip -r awesome-website.zip dist/

