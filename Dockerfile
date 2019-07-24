FROM node:dubnium

ADD . /root

WORKDIR /root

ARG SSH_KEY
RUN mkdir /root/.ssh/
RUN echo "$SSH_KEY" > /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN touch /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN npm install


ENTRYPOINT [ "npm", "start" ]
