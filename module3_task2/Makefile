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
	make build
	zip awesome-website.zip dist/

lint: ## shellcheck setup
	$(SHELLCHECK) setup.sh > /dev/null 2>&1 || echo "Lint Failed"

unit-tests: ## Runs unit-test
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

integration-tests: ##  execute (successfully) the Golang integration tests
	go test -v -coverprofile=coverage-integrations.out
