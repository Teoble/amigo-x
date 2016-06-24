FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /opt/amigo-x
WORKDIR /opt/amigo-x
ADD Gemfile /opt/amigo-x/Gemfile
ADD Gemfile.lock /opt/amigo-x/Gemfile.lock
RUN bundle install -j3 -r3
ADD . /opt/amigo-x
RUN RAILS_ENV=production bundle exec rake assets:precompile
VOLUME /opt/amigo-x/public/assets
