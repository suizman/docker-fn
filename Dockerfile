FROM ubuntu

RUN apt-get update 
RUN apt-get install curl -y 
RUN curl -sSL http://get.iron.io/fn | sh 
RUN curl -sSL https://get.docker.com/ | sh

RUN rm -rf /tmp/* && \
    rm -rf /var/tmp/* && \
    rm -rf /var/cache/*

ENTRYPOINT ["/usr/local/bin/fn"]
