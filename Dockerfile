# Use an official Python runtime as a parent image (I'm using slim for essencials only)
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /lambda-layer

# Copy the requirements file into the container
COPY requirements.txt ./

# Install the dependencies
RUN pip install --target ./package -r requirements.txt

# Copy the lambda function code into the container
COPY . .

# Package the dependencies into a zip file
RUN cd package && zip -r9 ../layer.zip .

# Clean up
RUN rm -rf package
