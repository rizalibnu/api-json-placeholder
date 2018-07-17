# build environment
FROM node:10
EXPOSE 3000
COPY package.json package.json
RUN yarn
COPY . .
CMD [ "yarn", "prod" ]
