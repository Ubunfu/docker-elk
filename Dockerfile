# FROM debian:stable-slim
FROM openjdk

WORKDIR /app

COPY ./logstash-6.3.1.tar.gz /app

# set up logstash
RUN tar -xzf /app/logstash-6.3.1.tar.gz \
    && rm -f /app/logstash-6.3.1.tar.gz

# Custom logstash settings
COPY ./config/logstash.yml /app/logstash-6.3.1/config/logstash.yml
COPY ./config/pipelines.yml /app/logstash-6.3.1/config/pipelines.yml

COPY . /app

EXPOSE 5000

CMD ["/app/logstash-6.3.1/bin/logstash"]
# CMD ["/bin/bash"]