
FROM golang:1.16 as build

ENV BRANCH=master
ENV GO111MODULE=on
ENV CGO_ENABLED=0

RUN git clone --depth=1 --branch $BRANCH https://github.com/nats-io/nats-server.git 
RUN cd nats-server && go build

FROM scratch
COPY --from=build /go/nats-server/nats-server /nats-server
EXPOSE 4222 8222
ENTRYPOINT ["/nats-server"]
CMD ["-m", "8222"]
