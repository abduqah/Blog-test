FROM ruby:2.6

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git-core

RUN git clone https://github.com/abduqah/Blog-test.git

WORKDIR /Blog-test

RUN gem install bundler -v 1.16.6

RUN bundler install

ENV SECRET_KEY_BASE 6bbf3dba0819f7bcd135d0868376ebe0
ENV RAILS_ENV production
ENV PRO_DATABASE_NAME blog_production
ENV REDIS_URL redisblog.fgq7f9.0001.use2.cache.amazonaws.com
ENV PRO_DB_HOST blogdb.cwav3b2diatp.us-east-2.rds.amazonaws.com
ENV PRO_DB_PORT 5432
ENV PRO_DB_USERNAME rails
ENV PRO_DB_PASSWORD rails123

EXPOSE 3000

CMD [ "rails", "s" ]
