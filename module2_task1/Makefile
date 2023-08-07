# Variables
BINARY_NAME := awesome-api
LOG_FILE := $(BINARY_NAME).log
PID_FILE := $(BINARY_NAME).pid

# Goals
.PHONY: help

help: ## Prints out the list of targets and their usage
	@awk 'BEGIN {FS = ":.*?# "} /^[a-zA-Z_-]+:.*?# / {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)


.PHONY: build
build: lint ## compile the source code to a binary
	go get github.com/gorilla/mux
	go build -o $(BINARY_NAME)

.PHONY: run 
run: ## run the application
	./$(BINARY_NAME) > $(LOG_FILE) 2>&1 & echo $$! > $(PID_FILE)

.PHONY: stop
stop: ## stop the running application
	-kill `cat $(PID_FILE)` || true
	-rm $(PID_FILE) || true


.PHONY: clean 
clean: ## clean up the binary and log file
	make stop
	-rm $(BINARY_NAME) || true
	-rm $(LOG_FILE) || true

.PHONY: test
test: ## test the application
	@echo "Testing HTTP endpoint /..."
	@curl -sSf http://localhost:9999 || echo "TESTFAILED"
	@echo "Testing HTTP endpoint /health..."
	@curl -sSf http://localhost:9999/health || echo "TESTFAILED"

.PHONY: lint
lint: ## Lint the main
	golangci-lint run