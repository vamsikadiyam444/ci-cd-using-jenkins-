This project demonstrates a complete CI/CD pipeline for deploying a Java web application on an AWS EKS (Elastic Kubernetes Service) cluster using Jenkins, Ansible, Docker, and Kubernetes.

The workflow automatically builds a WAR file using Maven, containers it with Docker, pushes the image to Docker Hub, and deploys it to an EKS cluster through Ansible and Jenkins automation.

# Tech Stack

Jenkins – CI/CD automation

Ansible – Configuration management & deployment automation

Docker – Containerization of the Java app

Kubernetes (EKS) – Orchestrating containers

Maven – Build tool for Java

Git & GitHub – Source code management

AWS EC2 – Hosting Jenkins and Ansible nodes

# Prerequisites

# Tomcat Server Setup (on another Amazon Linux EC2)

 Connect to Tomcat EC2
 ```bash

ssh -i your-key.pem ec2-user@<your-tomcat-ec2-public-ip>

```

#  Install Java

```bash

sudo amazon-linux-extras install java-openjdk11 -y

```

# Check version:

```bash

java -version

```

# Install Tomcat

```bash

sudo yum install tomcat -y

sudo yum install tomcat-webapps tomcat-admin-webapps -y

```

# Start Tomcat service

```bash

sudo systemctl start tomcat
sudo systemctl enable tomcat
sudo systemctl status tomcat

```

# Open Tomcat port (8080)

```bash

http://<your-tomcat-ec2-public-ip>:8080

```

 # Jenkins Server Setup (on Amazon Linux AMI)
 
 Connect to EC2 (Jenkins server)

 ```bash

chmod 400 your-key.pem
ssh -i your-key.pem ec2-user@<your-jenkins-ec2-public-ip>

```

# Update system packages
 
```bash

sudo yum update -y

```

# Install Java (required for Jenkins)

```bash

sudo amazon-linux-extras install java-openjdk17 -y

```
# Check version:

```bash

java -version

```
# Install Jenkins

 ```bash

sudo wget -O /etc/yum.repos.d/jenkins.repo \

    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y

sudo yum install jenkins -y

```bash

 Start Jenkins service

```bash

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl status jenkins

```

# Open Jenkins in Browser

```bash

http://<your-jenkins-ec2-public-ip>:8080

```

# Get Jenkins initial password

```bash
 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

```

# Install Docker

```bash

sudo apt install docker.io -y

```

# Install Maven

```bash

sudo apt install maven -y

```

# Install kubectl

```bash

sudo apt install -y apt-transport-https ca-certificates curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update && sudo apt install -y kubectl

```
# Install AWS CLI (for EKS)

```bash

sudo apt install awscli -y

```

# Install eksctl

```bash

curl -sL "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz
sudo mv eksctl /usr/local/bin

```

# Create an EKS Cluster 

```bash

eksctl create cluster --name devops-cluster --region us-east-1 --nodes 2

```
# To check the cluster 

```bash

kubectl get nodes

```

Build & Push to Docker Hub

# Login to Docker Hub

```bash

docker login

```

# Build image

```bash

docker build -t vamsikrishna212/regapp:latest .

```

# Push to Docker Hub

```bash

docker push vamsikrishna212/regapp:latest

```

# Ansible Server Setup (Amazon Linux AMI)

 Connect to EC2 (Ansible server)
 
 ```bash 

chmod 400 your-key.pem
ssh -i your-key.pem ec2-user@<your-ansible-ec2-public-ip>

```

 # Update packages

 ```bash

sudo yum update -y

```

# Install Python

```bash

sudo amazon-linux-extras install python3.8 -y

```

# Check version:

```bash

python3 --version

```

# Install Ansible

```bash

sudo dnf install ansible -y

```

# Check version:

```bash

ansible --version

```
