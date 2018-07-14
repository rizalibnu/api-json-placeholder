# build environment
FROM node:10
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/package.json
RUN yarn
COPY . /usr/src/app
RUN yarn start
EXPOSE 80