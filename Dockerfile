FROM ruby:2.6.6

ENV HOME="/app" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo

WORKDIR ${HOME}

COPY Gemfile Gemfile.lock ./

RUN apt-get -y install imagemagick libmagickcore-dev libmagickwand-dev

# Install dependencies
RUN bundle install -j4

ADD . ${HOME}
