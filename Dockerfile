FROM mhart/alpine-node

COPY src /src
RUN apk update && \
    apk add make && \
    npm install -g less jade http-server && \
    cd src && \
    npm install && \
    make -C client && \
    apk del make && \
    rm -rf /var/cache/apk/*

WORKDIR /src/
EXPOSE 8080 6060
