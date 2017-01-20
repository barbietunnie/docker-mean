FROM node:7.4
MAINTAINER Babatunde Adeyemi <barbietunnie@gmail.com>

# Install MongoDB
ENV MONGO_VERSION 3.4.1
RUN curl -SL "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-$MONGO_VERSION.tgz" | tar -xz -C /usr/local --strip-components=1

# Setup data DB volume
VOLUME /data/db

# Install global npm dependencies
RUN npm install -g grunt-cli bower

# Create a new user
RUN useradd -ms /bin/bash dev

# Set the working dir
WORKDIR /home/dev/src

# Start MongoDB and a terminal session on startup
# --smallfiles: reduces the size of the generated MongoDB data files from 3GB to 512MB (for development)
ENV MONGOD_START "mongod --fork --logpath /var/log/mongodb.log --logappend --smallfiles"
ENTRYPOINT ["/bin/sh", "-c", "$MONGOD_START && su dev && /bin/bash"]




