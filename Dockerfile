FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /transmedia
WORKDIR /transmedia
ADD Gemfile /transmedia/Gemfile
ADD Gemfile.lock /transmedia/Gemfile.lock
RUN bundle install
ADD . /transmedia
