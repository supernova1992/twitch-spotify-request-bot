FROM node:14-alpine

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache bash
RUN yarn



EXPOSE 8000

RUN yarn build
CMD [ "yarn", "start" ]