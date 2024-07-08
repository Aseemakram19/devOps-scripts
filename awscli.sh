#! /bin/bash

#### this script author is Aseem Akram - Cloud Aseem Youtube channel #####

# Download the AWS CLI version 2 installer package
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Install the unzip package
sudo apt-get install unzip -y

# Unzip the AWS CLI installer package
unzip awscliv2.zip

# Run the AWS CLI install program
sudo ./aws/install
