FROM ruby:3.2.1-alpine
ENV ROOT="/credi-discount"

# install dependencies for application
RUN apk -U add --no-cache \
    make \
    gcc \
    build-base \
    git \
    postgresql-dev \
    postgresql-client \
    libxml2-dev \
    libxslt-dev \
    nodejs-current \
    yarn \
    tzdata 

WORKDIR ${ROOT}
COPY . ${ROOT}

RUN gem install bundler
RUN bundle install --jobs 4

