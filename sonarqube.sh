# 1. install docker & INSTALL SONARQUBE AS A CONTAINER IN THE EC2 INSTANCE
#Cloud Aseem Auhor
sudo apt-get update -y
sudo apt-get install docker.io -y
sleep 5
sudo usermod -aG docker ubuntu 
newgrp docker
sleep 25
sudo chmod 777 /var/run/docker.sock
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
sleep 5
