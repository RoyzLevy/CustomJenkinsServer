# FROM jenkins/jenkins:lts-centos
# FROM jenkins/jenkins:2.387-alpine

# ENV JENKINS_USER admin
# ENV JENKINS_PASS admin

# # install docker and add jenkins to the docker group for accessing docker
# USER root

# # Update apk repositories
# RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
# RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
# RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# # Install the latest Docker and docker-compose binaries
# RUN apk add docker

FROM jenkins/jenkins:lts

