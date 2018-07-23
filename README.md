# docker-elk

### Description
Elastic stack running as containers

### Usage
1) Downlaod [Logstash 6.3.1](https://artifacts.elastic.co/downloads/logstash/logstash-6.3.1.tar.gz) tarball and place it in logstash/
2) Downlaod [Elasticsearch 6.3.1](https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.1.tar.gz) tarball and place it in elasticsearch/
3) Downlaod [Filebeat 6.3.1](https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.3.1-linux-x86_64.tar.gz) tarball and place it in filebeat/
4) Run ```$docker-compose up --build``` to build and start all containers!

### Implementation
+ Docker images are built on top of the [```openjdk:11-jre```](https://docs.docker.com/samples/library/openjdk/) base image
+ Test log files are located in ```./logs```, and bind mounted to the filebeat container, so you can make live edits - no need to rebuild or restart.  Filebeat will pick them up and beat them over to logstash.
