FROM ruby:3.0.2

RUN mkdir /opt/RePOS
WORKDIR /opt/RePOS
ADD ./ ./
RUN gem install bundler
RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
