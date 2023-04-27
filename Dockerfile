
FROM node:14

COPY ./package.json /freeBoard_/
COPY ./yarn.lock /freeBoard_/
WORKDIR /freeBoard_/
RUN yarn install

COPY . /freeBoard_/

RUN yarn build 
CMD yarn start
