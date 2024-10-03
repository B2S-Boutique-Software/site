FROM ruby:3.3.5

RUN apt-get update -qq

WORKDIR /usr/src/app

COPY Gemfile ./

RUN gem install bundler && bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "clean"]

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
