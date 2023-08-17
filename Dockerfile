# Use a base image of Ubuntu 22.04
FROM ubuntu:22.04

# Run updates and installation commands
RUN apt-get update && \
    apt-get install -y git make

# Set the working directory
WORKDIR /app

# Define a default entry point (you can change this as needed)
CMD ["/bin/bash"]