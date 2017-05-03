FROM node:slim
MAINTAINER Fabio Napoleoni <f.napoleoni@gmail.com>

# Debian repository versions
ENV YARN_VERSION=0.23.4-1
# Install packages repositories
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
# Install utility packages
RUN apt-get update && apt-get -y install git-core tar zip
# Install yarn
RUN apt-get install -y yarn=${YARN_VERSION}
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
