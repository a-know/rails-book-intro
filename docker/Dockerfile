# ベースイメージとして公式のRubyイメージを使用
FROM ruby:3.3.5

# 作業ディレクトリを設定
WORKDIR /rails_book/intro

# yarn と nodejs のインストール
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y --no-install-recommends curl gnupg2 \
    && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn@1.22.22

# sqlite3 のインストール
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev

# GemfileとGemfile.lockをコピー
COPY ./Gemfile ./Gemfile.lock ./

# 依存関係をインストール
RUN bundle install

# アプリケーションのソースコードをコピー
COPY . .

# データベースを作成、マイグレーションを実行 (必要に応じて)
# RUN bundle exec rake db:create
# RUN bundle exec rake db:migrate

# ポートを公開
EXPOSE 3000

# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"] # docker-compose.ymlでcommandを指定する場合、ここは不要