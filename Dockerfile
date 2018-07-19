# FROM debian:stable-slim
FROM openjdk

WORKDIR /app

COPY ./logstash-6.3.1.tar.gz /app

# set up logstash
RUN tar -xzf /app/logstash-6.3.1.tar.gz \
    && rm -f /app/logstash-6.3.1.tar.gz

# Custom logstash settings
COPY ./config/pipelines.yml /app/logstash-6.3.1/config/pipelines.yml

EXPOSE 5000

COPY . /app

CMD ["/app/logstash-6.3.1/bin/logstash"]
# CMD ["/bin/bash"]