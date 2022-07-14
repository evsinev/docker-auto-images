FROM payneteasy/openjdk-17

RUN KEYRING=/usr/share/keyrings/nodesource.gpg \
   && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | gpg --dearmor | tee "$KEYRING" >/dev/null \
   && gpg --no-default-keyring --keyring "$KEYRING" --list-keys

RUN VERSION=node_16.x \
  && KEYRING=/usr/share/keyrings/nodesource.gpg \
  && echo "deb [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION bullseye main" | tee /etc/apt/sources.list.d/nodesource.list \
  && echo "deb-src [signed-by=$KEYRING] https://deb.nodesource.com/$VERSION bullseye main" | tee -a /etc/apt/sources.list.d/nodesource.list

RUN apt-get update \
  && apt-get install -y nodejs

RUN npm install -g grunt grunt-cli
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
