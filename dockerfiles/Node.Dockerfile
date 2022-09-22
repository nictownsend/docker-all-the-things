FROM node:lts
RUN apt-get update
RUN apt-get install -y libsecret-1-dev chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
  PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
RUN npm install -g pnpm
RUN touch /.yarnrc && chgrp -Rf 20 /.yarnrc && chmod -Rf g+rw /.yarnrc
RUN mkdir /.yarn && chgrp -Rf 20 /.yarn && chmod -Rf g+rw /.yarn
RUN mkdir -p /.cache && chgrp -Rf 20 /.cache && chmod -Rf g+rw /.cache