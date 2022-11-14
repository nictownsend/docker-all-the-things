FROM node:lts
# FROM node:lts
USER root
RUN npm install -gf pnpm
RUN npm install -gf yarn
USER node
