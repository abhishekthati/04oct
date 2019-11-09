
# Information about the image in which the required packages are deployed
FROM centos:latest

# This provides information about the owner or maintainer
MAINTAINER infocue-devops-docker

# The location where the commands should executed while building the image
WORKDIR /opt

# Infrmation regarding the OS user
USER root

# Actuall commands that are used to build the image
RUN yum install java-1.8.0-openjdk-devel -y
RUN mkdir /docker
RUN touch f1 f2 f3
RUN echo "Hello You" >> f1
RUN cp f1 /docker/


WORKDIR /opt/docker

USER 1010

CMD ["/bin/bash"]


