# Search Dockerhub for an image
sudo docker search <image-name>

# Download the image
sudo docker pull <image-name>

# View saved images
sudo docker images

# Build the image using a dockerfile, with tags; the build context
# is usually the directory that stores the dockerfile, hence the .
docker build -t <image-name>:<tag> <build-context>
# Example
docker build -t my-image:latest .
# Once you have built the image, you can then run it

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
