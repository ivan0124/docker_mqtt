# How to build docker image
1. method1: go to docker hub to build image:

   https://hub.docker.com/r/ivan0124tw/docker_mqtt/~/settings/automated-builds/

2. method2: self build image in `docker_mqtt` folder 
<pre>
$ sudo docker build -t ivan0124tw/mqtt .
</pre>

# How to pull docker images
<pre>
$ sudo docker pull ivan0124tw/docker_mqtt
</pre>

# How to run docker image
1. start container. name is `mqtt`
<pre>
$ sudo docker run -it --name docker_mqtt ivan0124tw/docker_mqtt
or 
$ sudo docker run -it --name docker_mqtt -v $PWD:/home/adv:rw ivan0124tw/docker_mqtt

</pre>

2. restart container. name is `mqtt`
<pre>
$ sudo docker start -ai docker_mqtt
</pre>

3. stop container. name is `mqtt`
<pre>
$ sudo docker rm  docker_mqtt
</pre>
