FROM ruby:3.3

WORKDIR /hello_app

# GemfileとGemfile.lockファイルを
# イメージのserviceディレクトリ内にコピー
COPY Gemfile* /hello_app/

RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
