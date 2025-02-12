sudo apt-get update -y
sudo apt-get install docker.io -y
sleep 5
sudo usermod -aG docker ubuntu 
sudo usermod -aG docker jenkins
newgrp docker
sleep 25
sudo chmod 777 /var/run/docker.sock
