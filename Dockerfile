# using alpine linux image for the container
FROM alpine:latest
#updating packages
RUN apk update
## installing nginx
RUN apk add nginx
# installing git
RUN apk add git
# installing openrc
RUN apk add openrc

# removing cached version of packages and allows installation of latest versions of packages
RUN rm -rf /var/cache/apk/*

#Copying nginix configuration file from host to the docker container
COPY nginx.conf /etc/nginx/nginx.conf

#Cloning git repository in tmp/task directory and moving the cloned content to nginx root directory
RUN git clone https://github.com/veekrum/task.git /tmp/task
RUN mv /tmp/task/ /usr/share/nginx/html/

# Managing necessary permissions to run the nginx service and allowing nginix to access the content of root directory.
RUN chown -R nginx:nginx /run/nginx
RUN chmod -R 755 /run/nginx
RUN chown -R nginx:nginx /usr/share/nginx/html/*

# running openRC service which defines how a particular service should be started, stopped or restarted.
RUN openrc

#creating a missing file 
RUN touch /run/openrc/softlevel

# exposing port 80 to access nginx service through the host machine
EXPOSE 80

# starting nginx as a foreground process
CMD nginx -g "daemon off;"
