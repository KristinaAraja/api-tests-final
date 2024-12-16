FROM node:20
LABEL DESCRIPTION="Dockerfile for api-tests"

WORKDIR /api-tests-final
COPY package.json package.json
COPY config.js config.js
COPY tests tests

RUN npm install

ENTRYPOINT [ "npm" ]
