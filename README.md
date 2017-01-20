## Setup MEAN environment with Docker
-----------------------------------------
Run the setup script:

`$ ./run.sh`

### Steps
1. Get inside the container
    `$ docker exec -it docker-mean-dev bash`

2. Install the app dependencies, once you're inside the container
    `bower install && npm install`

3. Start the web server
    `grunt serve`

Now you should be able to access `http://localhost:9000` in a web browser on your host
OS to access the web app.