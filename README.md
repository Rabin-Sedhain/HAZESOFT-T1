# HAZESOFT-T1
####Starting task 1

Step 1:
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


Step 2:
Creating Dockerfile to automate tasks

# 2.1 Declearing docker image to use. Here i have choosed alpine immage which was in docker hub.

# 2.2 Updating and adding packages like nginx and git 

# 2.3  removing cache 

# 2.4 Copying configuration file from host to the docker container

# 2.5 Cloning the git repository to /tmp/task ditectory 

# 2.6 Moving the files from the tmp directory to nginix root directory

# 2.7 Changind the user and group of the copied fiels to nginx

# 2.8  Exposing nginx default port 80 

# 2.9 


Step 3
Building the dockerfile to create a docker image

# 3.1 To build the dockerfile we can use following command

$ docker build . -t alpineImage

Step 4
Running the docker image

# 4.1 to run the docker we can use the following command

$ docker run -it alpineImage /bin/sh  - this will run a terminal for the container

$ docker run -p 9000:80 --name alpineImage - this will  run the docker image and the port 80 of the docker now can be accessed through port 9000 of the host.



Verifying the docker is running
To verify the docker container is running you can either use the 1st commang and execute
http://localhost/site/index.html

or

you can use 2nd command and execute http://localhost:9000/site/index.html in host machine itself.


##################################################################################################
