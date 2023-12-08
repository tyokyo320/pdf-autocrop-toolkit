# Use Ubuntu as the base image
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    apt-get install -y pdftk texlive-extra-utils locales

# Generate locale
RUN locale-gen en_US.UTF-8

# Set environment variables
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Set the working directory
WORKDIR /workspace

# Keep the container running
CMD tail -f /dev/null
