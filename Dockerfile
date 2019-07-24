FROM node:dubnium

ADD . /root

WORKDIR /root

RUN npm install


ENTRYPOINT [ "npm", "start" ]
