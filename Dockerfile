FROM node:dubnium

ADD . /root

WORKDIR /root

RUN mkdir /root/.ssh && chmod 0700 /root/.ssh && ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts

RUN npm install


ENTRYPOINT [ "npm", "start" ]
