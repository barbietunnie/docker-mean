# Build the image and create a container from it
docker build -t barbietunnie/mean .

# Wait for the build to finish
sleep 2

# Create a container from the image
#
# --net="host": attaches the container’s networking stack to the host machine, 
# so you can easily access the ports used by the app and DB without needing 
# to expose or map ports.
docker run -it \
    --net="host" \
    -v `pwd`:/home/dev/src \
    --name docker-mean-dev \
    barbietunnie/mean