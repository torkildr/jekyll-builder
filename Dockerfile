FROM ruby:3-slim-buster
MAINTAINER torkildr

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
    build-essential zlib1g-dev git

ENV HOME="/root"
ENV GEM_HOME="/root/gems"

RUN echo 'export PATH="/root/gems/bin:$PATH"' >> /root/.bashrc
RUN gem install jekyll bundler

VOLUME /srv/jekyll
WORKDIR /srv/jekyll
ENV BUNDLE_PATH=/srv/jekyll/.bundle_cache

ENTRYPOINT /bin/bash

