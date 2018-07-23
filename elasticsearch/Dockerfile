FROM openjdk

RUN groupadd -g 1000 elasticsearch && useradd elasticsearch -u 1000 -g 1000

WORKDIR /app

COPY ./elasticsearch-6.3.1.tar.gz /app

# set up elasticsearch
RUN tar -xzf /app/elasticsearch-6.3.1.tar.gz \
    && rm -f /app/elasticsearch-6.3.1.tar.gz 
    
COPY ./config/elasticsearch.yml /app/elasticsearch-6.3.1/config/elasticsearch.yml

RUN chown -R elasticsearch:elasticsearch /app/elasticsearch-6.3.1

RUN set -ex && for path in data logs config config/scripts; do \
        mkdir -p "$path"; \
        chown -R elasticsearch:elasticsearch "$path"; \
    done

EXPOSE 9200

USER elasticsearch

CMD ["/app/elasticsearch-6.3.1/bin/elasticsearch"]