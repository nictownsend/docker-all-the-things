FROM node:16.14-buster
# FROM cypress/browsers:node16.17.0-chrome106
USER root
RUN npm install -gf pnpm
RUN npm install -gf yarn

RUN apt-get update && apt-get install -y \
  libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

#   ca-certificates \
#   curl \
#   gnupg \
#   lsb-release
# RUN mkdir -p /etc/apt/keyrings &&  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# RUN echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
#   $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
# RUN apt-get update && apt-get install -y \
#   libsecret-1-dev chromium docker-ce docker-ce-cli containerd.io docker-compose-plugin
# ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
#   PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
# USER 1001

# docker pull cypress/browsers:node16.17.0-chrome106