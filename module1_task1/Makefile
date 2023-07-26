# Variables
POST_TITLE ?= "New Blog Post"
POST_NAME ?= "new-blog-post"

# Targets
.PHONY: build clean post

build:
	hugo -d dist

clean:
	rm -rf dist/*

post:
	# Create a new blog post with the given title and filename
	echo '+++\ntitle = $(POST_TITLE)\ndate = $(shell date +"%Y-%m-%d")\n+++\n\n' > content/posts/$(POST_NAME).md