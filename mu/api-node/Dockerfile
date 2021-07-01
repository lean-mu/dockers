# build stage
FROM golang:1.16-alpine AS build-env
RUN apk --no-cache add build-base git gcc
ENV BRANCH=master
ENV SOURCES=/go/src/github.com/lean-mu/mu

# TODO: compile statically, compose from scratch image
# ENV GO111MODULE=on
# ENV CGO_ENABLED=0

RUN mkdir -p $SOURCES && git clone https://github.com/lean-mu/mu.git --branch $BRANCH --single-branch $SOURCES
RUN cd $SOURCES/cmd/fnserver && go mod vendor && go build -o fn-alpine && cp fn-alpine /tmp/

# final stage: the local fnproject/dind:latest will be either built afresh or
# whatever is the latest from master, depending on whether we're releasing
# a newer cut.
FROM alpine:latest
WORKDIR /app
COPY --from=build-env /tmp/fn-alpine /app/fnserver
ENV FN_NODE_TYPE=api
CMD ["./fnserver"]
