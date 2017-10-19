FROM mhart/alpine-node

COPY src /src
RUN npm install -g less jade http-server && \
    cd src && \
    npm install && \
    cd client && \
    make

WORKDIR /src/
EXPOSE 8080 6060
