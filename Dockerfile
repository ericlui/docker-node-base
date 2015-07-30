FROM factual/docker-cdh5-base
MAINTAINER Eric Lui <eric@factual.com>

RUN apt-get update && \
  apt-get -y --force-yes install \
    nodejs \
    npm \ 
    curl 

# borrowed liberally from http://stackoverflow.com/questions/25899912/install-nvm-in-docker

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 0.10

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH
