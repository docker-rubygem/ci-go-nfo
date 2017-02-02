FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install ci-go-nfo --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ci-go-nfo"]
CMD ["--help"]
