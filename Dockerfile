# build environment
FROM keymetrics/pm2:latest
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN yarn
COPY . /usr/src/app
RUN pm2 start server.js
EXPOSE 80