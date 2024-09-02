# AWS Lambda Layer with Dockerfile

This repository provides a guide to create an AWS Lambda Layer using Dockerfile.

## Steps to Build the Layer

1. Clone the repository:
    ```
    git clone https://github.com/yourusername/aws-lambda-layer-dockerfile.git
    cd aws-lambda-layer-dockerfile
    ```

2. Modify the `requirements.txt` file with your desired Python packages.

3. (Optional) Run the build script:
    ```
    chmod +x build.sh
    ./build.sh
    ```
    - The `build.sh` script is a convenient tool that automates the process of building the Docker image, running the container, and extracting the `layer.zip` file. It handles the entire process for you, including cleaning up the Docker container after the build is complete.
    - **Note**: This script is optional. You can manually execute the commands within the `build.sh` script if you prefer to have more control over each step of the process.

4. Upload the `layer.zip` file to AWS Lambda as a new layer.

## Dockerfile Details

- The `Dockerfile` uses a Python 3.10 image to build the Lambda layer.
- It installs dependencies defined in `requirements.txt` into the `/package` directory.
- The `layer.zip` file is created containing all dependencies.

## build.sh Script Details

- The `build.sh` script simplifies the process of building the Lambda layer by automating the Docker commands.
- It first builds the Docker image based on the `Dockerfile`, then runs a container from this image, and finally extracts the `layer.zip` file from the container.
- After the `layer.zip` file is extracted, the script automatically removes the container to keep your environment clean.
- While the `build.sh` script is provided for convenience, you can achieve the same result by manually executing each step outlined in the script.
