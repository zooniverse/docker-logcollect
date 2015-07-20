FROM ubuntu:14.04

RUN apt-get update && apt-get install -y golang git

ENV GOPATH /usr/local

RUN go get github.com/zooniverse/gelfcat
RUN cd /usr/local/src/github.com/zooniverse/gelfcat && git checkout format-json

RUN go install github.com/zooniverse/gelfcat

ADD run.sh /
RUN chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
