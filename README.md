# HAZESOFT-T1
####Starting task 1

Step 1: Setting up the environment
Installing dependencies for the task
There are many dependencies that is required to deploy the dockerfile
# 1.1 update packages and install dependencies

-------	sudo apt-get update

-------	sudo apt-get install \
    	   ca-certificates \
    	   curl \
           gnupg

# 1.2 Adding Docker's GPG key

$ sudo install -m 0755 -d /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ sudo chmod a+r /etc/apt/keyrings/docker.gpg 

# 1.3 Setting up repository

$  echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 1.4 updating package
$  sudo apt-get update

# 1.5 Installing latest versions of docker and other packages

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


							OR
######################################################################################################
#    You can vagrant up the vagrant file present in the repo to initilize the environment
######################################################################################################


Step 2:
Creating Dockerfile to automate tasks

# 2.1 Declearing docker image to use. Here i have choosed alpine image which was in docker hub.

# 2.2 Updating and adding packages like nginx, git, and openRC 

# 2.3 Removing cache versions of packages

# 2.4 Copying configuration file from host to the docker container

# 2.5 Cloning the git repository to /tmp/task ditectory 

# 2.6 Moving the files from the tmp directory to nginix root directory

# 2.7 Changing the user and group of the copied files to nginx

# 2.8 running openrc service

# 2.9 creating a missing file

# 2.10 Exposing nginx default port 80 

# 2.11 Starting nginx as foreground process


Step 3
Building the dockerfile to create a docker image

# 3.1 To build the dockerfile we can use following command

$ docker build . -t alpine-image

Step 4
Running the docker image

# 4.1 to run the docker we can use the following command

$ docker run -dt -p 9000:80 --name alpine-cont alpine-image  -this will  run detached docker container and the port 80 of the docker now can be accessed through port 9000 of the host. 

Verifying the docker is running
To verify the docker container is running you can execute curl http://localhost:9000/site/index.html in host machine itself and the message will get displayed

##################################################################################################
