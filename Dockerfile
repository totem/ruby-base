FROM totem/ubuntu:raring

ENV RUBY_VERSION 1.9.3
ENV RUBY_FULL_VERSION 1.9.1

RUN apt-get update --fix-missing && apt-get upgrade -y
RUN apt-get install -y wget curl git-core ruby$RUBY_VERSION ruby$RUBY_FULL_VERSION-full bundler build-essential libssl-dev

RUN apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ['ruby']
CMD ['--version']
