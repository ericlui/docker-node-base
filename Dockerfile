FROM factual/docker-cdh5-base
MAINTAINER Eric Lui <eric@factual.com>

# install nvm
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
RUN source ~/.bashrc
RUN nvm install 0.10
RUN nvm use 0.10

RUN apt-get update && \
  apt-get -y --force-yes install \
    nodejs \
    npm 



