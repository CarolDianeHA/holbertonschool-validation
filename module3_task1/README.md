## Prerequisites

* Hugo Installed (the extended edition)
* Go Install

## Lifecycle
* build: Generate the website from the markdown and configuration files in the directory dist/. and compile the source code of the application to a binary named awesome-api.
* post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
* clean: Cleanup the content of the directory dist and delete the binary awesome-api and the log file awesome-api.log.
* help: prints out the list of commands in makefile and their usage.

## Build Workflow

Triggered on:
* Code push
* Daily
* Does stuff
* Manual Option