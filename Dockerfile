FROM ruby
RUN apt-get update -qq
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install
COPY . /app
EXPOSE 3000 1234 26162
CMD ["rails", "server", "-b", "0.0.0.0"]