FROM openjdk

WORKDIR /app

COPY ./filebeat-6.3.1-linux-x86_64.tar.gz /app

# set up filebeat
RUN tar -xzf /app/filebeat-6.3.1-linux-x86_64.tar.gz \
    && rm -f /app/filebeat-6.3.1-linux-x86_64.tar.gz

# Custom filebeat settings
COPY ./config/filebeat.yml /app/filebeat-6.3.1-linux-x86_64/filebeat.yml

CMD ["/app/filebeat-6.3.1-linux-x86_64/filebeat", "-c", "/app/filebeat-6.3.1-linux-x86_64/filebeat.yml", "-e"]