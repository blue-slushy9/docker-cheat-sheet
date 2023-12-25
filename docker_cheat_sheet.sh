# Search Dockerhub for an image;
sudo docker search <image-name>

# Download the image;
sudo docker pull <image-name>

# View saved images;
sudo docker images

# Create a container;
sudo docker run <image-name>

# Start a container (please note this has caused me issues in the past, 
# the following command below is preferred);
sudo docker start <container-name>

# Start a container as a daemon, i.e. background process;
sudo docker start -d <container-name>

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
