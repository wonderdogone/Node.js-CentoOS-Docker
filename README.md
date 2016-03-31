# Node.js-CentoOS-Docker
Sometimes you need to test your Node.js app on CentOS. So we can use container with Docker and work on the fly.


Often my production servers are running CentOS while my local development may be on another OS. When it's time to test or debig your application before sending to QA you want to make sure your modules and version of NOde.js are all running as expected on the prod OS. So I use DOcker to make a container from a base CentOS image, install node.js in it then test my app. 

Here is how

### 1- CLone the Dockerfile in this repo
### 2- Build it like so 
    #### docker build -t <yourname/yourtag>
###3 - cd into the directoryu with your node applciation code. Run the docker image that is based on CentOS and had Node.js installed
    #### docker run -it -p 8080:8080 -v $(PWD):/src -w /src <yourname/yourtag>
    Note: in the case above my app exposes 8080 so I map the Host port to the container port. 
    Other then that  all this command  does is takes your source code and copies it into the container. the -it flag bascially brings you into the container at a terminal prompt       upon running.
