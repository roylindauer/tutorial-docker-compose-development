FROM ruby:3.1.3

ARG RAILS_ENV=production

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends  libvips libvips-dev libvips-tools libpq-dev && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt

ARG BUNDLER_VERSION=2.3.26
RUN gem install "bundler:${BUNDLER_VERSION}" --no-document && \
    gem update --system && \
    gem cleanup

WORKDIR /app
 
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs "$(nproc)"

COPY . .

CMD ["bin/rails", "s", "-b", "0.0.0.0"]

EXPOSE 3000
