FROM node:7.4
MAINTAINER Babatunde Adeyemi <barbietunnie@gmail.com>

# Install MongoDB
ENV MONGO_VERSION 3.4.1
RUN curl -SL "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" | tar -xz -C /usr/local --strip-components=1

