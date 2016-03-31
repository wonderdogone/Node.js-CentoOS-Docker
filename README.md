# Node.js-CentoOS-Docker
Sometimes you need to test your Node.js app on CentOS. So we can use container with Docker and work on the fly.


Often my production servers are running CentOS while my local development may be on another OS. When it's time to test or debig your application before sending to QA you want to make sure your modules and version of NOde.js are all running as expected on the prod OS. So I use DOcker to make a container from a base CentOS image, install node.js in it then test my app. 

Here is how
