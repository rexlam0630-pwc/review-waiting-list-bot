FROM arm32v7/node:8

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app

RUN yarn

COPY . /usr/src/app

CMD ["node", "index.js"]

