FROM ubuntu:trusty

WORKDIR /home/madgraph

COPY . .

RUN apt-get update && \
    apt-get install -y $(grep -v -E '(^#|^$)' requirements.apt) && \
    rm -rf /var/lib/apt/list/*

CMD /bin/bash
