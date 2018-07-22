FROM openjdk

WORKDIR /app

COPY ./metricbeat-6.3.1-linux-x86_64.tar.gz /app

# set up metricbeat
RUN tar -xzf /app/metricbeat-6.3.1-linux-x86_64.tar.gz \
    && rm -f /app/metricbeat-6.3.1-linux-x86_64.tar.gz

# Custom metricbeat settings
COPY ./config/metricbeat.yml /app/metricbeat-6.3.1-linux-x86_64/metricbeat.yml

CMD ["/app/metricbeat-6.3.1-linux-x86_64/metricbeat", "-c", "/app/metricbeat-6.3.1-linux-x86_64/metricbeat.yml", "-e"]