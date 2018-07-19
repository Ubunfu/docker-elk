# docker-logstash

### Description
Logstash running as a docker image to use for testing.

### Usage
1) Downlaod [Logstash 6.3.1](https://www.elastic.co/downloads/logstash) and place it in project root
2) Run ```$docker-compose build && docker-compose up```

### Implementation
+ Docker image is built on top of the [```openjdk:11-jre```](https://docs.docker.com/samples/library/openjdk/) base image
+ Installs [Logstash 6.3.1]S
+ Starts two pipelines - one reading from a local logfile, and one listening for filebeat pings over port 5000.
+ Logstash filter configurations are loaded from a [bind mount](https://docs.docker.com/storage/bind-mounts/) at ```./ls_pipelines```, so you can make edits without having to rebuild.  You will have to restart the container though.
+ Test log files are located in ```./ls_logs```, also bind mounted to the container, so you can make live edits - no need to rebuild or restart.
