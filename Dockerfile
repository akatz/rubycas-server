FROM ruby:2.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY .git /usr/src/app/
COPY Gemfile /usr/src/app/
COPY rubycas-server.gemspec /usr/src/app/
RUN bundle install --no-deployment

COPY . /usr/src/app/

CMD 'bin/rubycas-server'
