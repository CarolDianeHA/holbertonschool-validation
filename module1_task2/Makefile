# Variables
POST_TITLE = "New Blog Post"
POST_NAME = "new-blog-post"

# Targets
.PHONY: build clean post

build:
	hugo -d dist

clean:
	rm -rf dist/*

post:
	# Create a new blog post with the given title and filename
	echo '---\ntitle = $(POST_TITLE)\ndate = $(shell date +"%Y-%m-%d-'T'%H:%m")\ndraft: false\n---\n' > content/posts/$(POST_NAME).md

help:
	## Show the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'