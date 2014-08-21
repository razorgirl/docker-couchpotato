## Base image to use
FROM ubuntu:14.04

## Maintainer info
MAINTAINER razorgirl <https://github.com/razorgirl>

## Update base image
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y

## Install prerequisites
RUN apt-get install -y python git-core

## Install Couchpotato
RUN cd /opt && \
  git clone https://github.com/RuudBurger/CouchPotatoServer.git

## Expose port
EXPOSE 5050

## Set working directory
WORKDIR /opt

## Run Couchpotato
ENTRYPOINT python CouchPotatoServer/CouchPotato.py
