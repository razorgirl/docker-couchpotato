## Base image to use
FROM centos:centos7

## Maintainer info
MAINTAINER mchlumsky <martin.chlumsky@gmail.com>

## Update base image
RUN yum update -y

## Install prerequisites
RUN yum install -y git

## Install Couchpotato
RUN cd /opt && \
  git clone https://github.com/RuudBurger/CouchPotatoServer.git

## Expose port
EXPOSE 5050

## Set working directory
WORKDIR /opt

## Run Couchpotato
ENTRYPOINT ["python", "CouchPotatoServer/CouchPotato.py"]
