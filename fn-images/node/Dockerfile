FROM alpine:3.12 as nodejs

# This is the default, can be overwritten by the caller
ARG VERSION=14.17.0

# Download tini - since we don't run alpine, it handles signals properly ;-)
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static /tini
RUN chmod +x /tini

# checkout the nodejs source code
RUN apk add git
RUN git clone --depth 1 --branch v${VERSION} https://github.com/nodejs/node
RUN apk add gcc g++ musl-dev python3 make
RUN apk add openssl openssl-dev linux-headers

# compile nodejs statically
WORKDIR node
RUN ./configure --fully-static --enable-static
#RUN make -s >/dev/null
RUN make -s

# Build the scratch image
FROM scratch
COPY --from=nodejs /node/out/Release/node /node
COPY --from=nodejs /tini /tini

# TODO: the original image had fn and node groups/folders, do we need them?

ENTRYPOINT ["/tini", "/node"]
