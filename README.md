# Node.js-CentoOS-Docker
Sometimes you need to test your Node.js app on CentOS. So we can use container with Docker and work on the fly.


Often my production servers are running CentOS while my local development may be on another OS. When it's time to test or debug your application you want to make sure your modules and version of Node.js are all running the same as on the prod OS. So I use DOcker to make a container from a base CentOS image, install node.js in it then test my app. 

Here is how

###### 1- Clone the Dockerfile in this repo
###### 2- Build it like so 
    #### docker build -t <yourname/yourtag>
######3 - cd into the directoryu with your node applciation code. Run the docker image that is based on CentOS and had Node.js installed
    #### docker run -it -p 8080:8080 -v $(PWD):/src -w /src <yourname/yourtag>
    
    Note: in the case above my app exposes 8080 so I map the Host port to the container port. 
    Other then that  all this command  does is takes your source code and copies it into the container. 
    The -it flag signifies interactive and brings you into the container at a terminal prompt.
###### 4- Now your in the container running the CentoOS with NOde.js and NPM already installed. Go ahead an ls -l and list our your directory. Notice you see Node.js application that copied over from our host.

###### 5- Now run your node app in the container(for example mine will run with "npm start"). Since we exposed port 8080 when issuing the docker run command we can hit out app from our host OS at localhost:8080.

Note we are sharing a volume between the host and the container so you can now edit files in your "Host" Directory and restart your node app in the container and see the updates.
