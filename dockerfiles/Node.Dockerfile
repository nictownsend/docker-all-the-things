FROM node:14
RUN apt-get update
RUN apt-get install -y libsecret-1-dev