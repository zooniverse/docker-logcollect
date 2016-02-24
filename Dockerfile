FROM golang:1-alpine

RUN apk add --no-cache git

RUN go get github.com/zooniverse/gelfcat
RUN go install github.com/zooniverse/gelfcat

ADD run.sh /
RUN chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
