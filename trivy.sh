#! /bin/bash

#### this script author is Aseem Akram - Cloud Aseem Youtube channel #####

# Install required packages for Trivy
sudo apt-get install wget apt-transport-https gnupg lsb-release -y

# Download and add the Trivy GPG key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -

# Add the Trivy repository to Apt sources
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list

# Update the package list again to include the Trivy repository
sudo apt-get update

# Install Trivy
sudo apt-get install trivy -y

