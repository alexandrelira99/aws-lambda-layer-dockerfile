#!/bin/bash

# Build the Docker image
docker build -t lambda-layer .

# Run the container and extract the layer.zip file
docker run --name lambda-layer-container lambda-layer
docker cp lambda-layer-container:/lambda-layer/layer.zip .

# Clean up
docker rm lambda-layer-container
