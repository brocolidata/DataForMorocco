FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get -y update && \
    apt-get -y update && \
    apt-get -y install \
        gcc \
        curl \
        bash \
        make \
        golang-go \
        git

ENV PATH /go/bin:/usr/local/go/bin:${PATH}

RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.113.0/hugo_extended_0.113.0_linux-amd64.tar.gz -O -J && \
    tar -xf hugo_extended_0.113.0_linux-amd64.tar.gz && \
    mkdir -p /usr/local/go/bin && \
    mv hugo /usr/local/go/bin/