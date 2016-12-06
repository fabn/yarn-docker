FROM node:slim
MAINTAINER Fabio Napoleoni <f.napoleoni@gmail.com>

# Install packages repositories
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
# Install package 
RUN apt-get update && apt-get -y install yarn
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
