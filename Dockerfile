FROM ruby
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN gem install rails
RUN mkdir web
WORKDIR /web
EXPOSE 3000
CMD rails new . --database=postgresql

