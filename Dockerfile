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

RUN go install github.com/gohugoio/hugo@latest