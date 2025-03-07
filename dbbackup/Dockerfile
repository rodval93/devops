# Base image
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  mysql-client \
  bats \
  && apt-get clean

WORKDIR /usr/src/app

COPY backup.sh test.bats ./

RUN chmod +x backup.sh

RUN mkdir backups

ENTRYPOINT ["/usr/bin/bash"]

