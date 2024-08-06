# DOCKER BUILDX
# Verify if buildx is installed
docker buildx version

# Create a new builder instance (you probably only need one)
docker buildx create --name <builder-name> --use

# View buildx instances you've created
docker buildx ls

# Navigate to the directory where your Dockerfile is stored;
# the -f switch is used in cases where the default dockerfile
# name isn't "Dockerfile", or if it's in a different directory;
# Build the Docker image using buildx, then load it into the
# local Docker daemon (as opposed to pushing it to DockerHub,
# for example); the build context is usually the directory that 
# stores the dockerfile, hence the . ;
docker buildx build -f <dockerfile-name or path> --load --tag <image-name>:<version> .
# Example
docker buildx build -f ./bash_git.dockerfile --load --tag bash_git:v1 .

# NOTE: the below command is missing the --load or --push option,
# it also assumes your dockerfile is named "Dockerfile";
# Navigate to the directory where your Dockerfile is stored;
# Build the Docker image using buildx
#docker buildx build --tag <image-name>:<version> .

# Search Dockerhub for an image
sudo docker search <image-name>

# Download the image
sudo docker pull <image-name>

# View saved images
sudo docker images

# Create a container---please note I have had many issues with trying 
# to create containers this way, ergo the following command below is preferred
sudo docker run <image-name>

# Creates the container to run in interactive mode and as a daemon,
# then specifies a name for it, as well as which image to use
sudo docker run -it -d --name <new-container-name> <image-name>

# Start a container (please note this has caused me issues in the past, 
# the following command below is preferred);
sudo docker start <container-name>

# Connect to the container using a bash terminal;
sudo docker exec -it <container-name> bash

# Stop a container;
sudo docker stop <container-name>

# View all created containers;
sudo docker ps -a

# View all running containers;
sudo docker ps

# Rename a container;
sudo docker rename <container-name> <new-container-name>

# Remove/delete a container;
sudo docker rm <container-name>

# DOCKER BUILD IS DEPRECATED IN 2024
# Build the image using a dockerfile, with tags; the build context
# is usually the directory that stores the dockerfile, hence the .
#docker build -t <image-name>:<tag> <build-context>
# Example
#docker build -t my-image:latest .
# Once you have built the image, you can then run it
