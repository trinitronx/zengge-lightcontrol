FROM resin/raspberrypi3-golang
MAINTAINER James Cuzella <@trinitronx>

ADD . /app/go/src/github.com/vikstrous/zengge-lightcontrol

ENV GOPATH=/app/go/
ENV GOARCH=arm

WORKDIR /app/go

RUN go install github.com/vikstrous/zengge-lightcontrol/cmd/zengge-lightcontrol

RUN ln -s $GOPATH/bin/zengge-lightcontrol /usr/local/bin/zengge-lightcontrol

ENTRYPOINT ["/usr/local/bin/zengge-lightcontrol"]
CMD [""]
