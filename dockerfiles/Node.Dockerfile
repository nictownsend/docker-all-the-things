FROM node:14
RUN apt-get update
RUN apt-get install -y libsecret-1-dev chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
  PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium