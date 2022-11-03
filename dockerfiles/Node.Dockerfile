FROM cypress/browsers:node16.17.0-chrome106
USER root
RUN npm install -gf pnpm
RUN npm install -gf yarn
RUN usermod -aG 0 node
USER node
