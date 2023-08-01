

# Makefile for Golang HTTP web server project

BINARY_NAME := awesome-api
LOG_FILE := awesome-api.log
.PHONY: all build run stop clean test help
all: build ## compile and run the application (default)
build: ## compile the source code to a binary
	@echo "Building the binary..."
	@go build -o $(BINARY_NAME) .
	@hugo
post: ##  Creates a new post using env vars POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
run: ## run the application
	@echo "Running the application in the background..."
	@./$(BINARY_NAME) > $(LOG_FILE) 2>&1 &
stop: ## stop the running application
	@echo "Stopping the application..."
	@kill `pgrep $(BINARY_NAME)`
	
clean: ## clean up the binary and log file
	@echo "Cleaning up..."
	@rm -f $(BINARY_NAME) $(LOG_FILE)
	@pkill awesome-api
	@rm -rf ./dist/*
test: ## test the application
	@echo "Testing the application..."
	@curl http://localhost:9999 
	@curl http://localhost:9999/health 
.SILENT:
help: ## Displays helpful information for Makefile commands
	cat Makefile | grep '##' | tr -d '##'
