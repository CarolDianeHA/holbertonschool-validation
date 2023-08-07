
.PHONY: 

	build clean post
	
lint:
    golangci-lint run

build:

	go build -o awesome-api main.go

clean:

	rm -rf dist/

post:

	hugo new posts/$(POST_NAME).md
	sed -i '2s/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md