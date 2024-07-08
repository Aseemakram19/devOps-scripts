# Add Docker's official GPG key:

#### this script author is Aseem Akram - Cloud Aseem Youtube channel #####

# Update the package list
sudo apt-get update

# Install the required packages
sudo apt-get install ca-certificates curl

# Create the /etc/apt/keyrings directory with appropriate permissions
sudo install -m 0755 -d /etc/apt/keyrings

# Download Docker's GPG key and save it to /etc/apt/keyrings/docker.asc
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

# Change the permissions of the Docker GPG key file to be readable by all users
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the Docker repository to Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package list again to include the Docker repository
sudo apt-get update

# Install Docker Engine, CLI, containerd, Buildx plugin, and Compose plugin
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Add the current user to the docker group to manage Docker as a non-root user
sudo usermod -aG docker ubuntu

# Refresh the group membership
newgrp docker 

# Check the status of the Docker service to ensure it's running
sudo systemctl status docker
