FROM factual/docker-cdh5-base
MAINTAINER Eric Lui <eric@factual.com>

RUN apt-get -y update \
 && apt-get -y upgrade

# install node
RUN apt-get -y --force-yes install \
  nodejs \
  npm

# install geos

