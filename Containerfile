FROM ubuntu:22.04

ENV LANG=en_US.UTF-8

RUN apt-get update && apt-get -y install curl
RUN curl -L -o wachy.deb https://github.com/rubrikinc/wachy/releases/download/0.1.0-alpha.6/wachy_0.1.0.alpha.6_amd64.deb
RUN apt -y install ./wachy.deb

ENTRYPOINT ["wachy"]
