FROM node:18
ENV port=8080
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
ARG CACHEBUST=1
COPY . .
EXPOSE $port
ENTRYPOINT [ "node", "server.js" ]
VOLUME /my_volume