## Setup MEAN environment with Docker
-----------------------------------------
Run the setup script:

`$ ./run.sh`

### Steps
1. Confirm that the conatiner is running
    `docker ps`
2. Get inside the container
    `docker exec -it docker-mean-dev bash`

3. Install the app dependencies, once you're inside the container
    `bower install && npm install`

4. Start the web server
    `grunt serve`

Now you should be able to access `http://localhost:9000` in a web browser on your host
OS to access the web app.