FROM ruby:2.6

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /app

COPY . .

RUN gem install bundler -v 1.16.6

RUN bundler install

ENV =value

EXPOSE 80

CMD [ "rails", "s", "-p", "80" ]
