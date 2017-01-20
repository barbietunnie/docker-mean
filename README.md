## Setup MEAN environment with Docker
Run the setup script:

`$ ./run.sh`

### Steps
1. Confirm that the container is running
    `docker ps`
2. Get inside the container
    `docker exec -it docker-mean-dev bash`

3. Install the app dependencies, once you're inside the container
    `bower install && npm install`

4. Start the web server
    `grunt serve`

Now you should be able to access `http://localhost:9000` in a web browser on your host
OS to access the web app.

Take a moment to marvel at what we have achieved! The code is running inside a 
fully-isolated Docker container, with no need to install node.js or MongoDB on your host OS, 
yet you can access it in a web browser. It’s like the code is running on a completely separate machine.

The killer blow comes when you realise that you can load the code in an editor on your host OS – since 
we have mounted the project’s working directory in the container, any changes to the code we make on 
the host OS are instantly recognised inside the container. In this scenario, the `-v` flag used 
when `docker run` is executed helps to achieve this, and this is set to `pwd` - the present directory
in `Dockerfile`.

Even better, since the generated project comes with [LiveReload](http://livereload.com/), 
changes to the source will propagate through to the opened browser, which will be automatically reloaded.

### Restarting the container
You can exit the container at any time by running `exit` at the container’s command prompt.

Since we named the container in the `docker run` command above, subsequent loading of the 
container can be achieved with a more straightforward command:

    $ docker start -ia mean-docker-example

This once again drops you into the container’s command prompt, but preserves any changes that have been 
made to the container since last boot. As a result, your database files should be persisted across 
container restarts.

### Special Thanks
Special thanks to [Tom Spencer](http://fiznool.com/blog/2015/07/25/setting-up-a-docker-based-mean-development-environment/) 
for his write-up which made this happen.