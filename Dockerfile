FROM alpine

RUN apk update && \
    apk add curl && \
    curl -sSL http://get.iron.io/fn | sh

ENTRYPOINT ["/usr/local/bin/fn"]
