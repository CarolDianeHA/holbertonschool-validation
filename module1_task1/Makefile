.PHONY:
	build clean post
	
build:
	hugo

clean:
	rm -rf dist/*

post:
# Create a new blog post with the given title and filename
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
