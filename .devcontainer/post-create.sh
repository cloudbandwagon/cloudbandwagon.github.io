#!/bin/sh

## Install additional apt packages
sudo apt-get update && \
    sudo apt-get install -y dos2unix libsecret-1-0 && \
    sudo apt-get clean -y

## Configure git
git config --global pull.rebase false
git config --global core.autocrlf input

# Install the version of Bundler.
if [ -f Gemfile.lock ] && grep "BUNDLED WITH" Gemfile.lock > /dev/null; then
    cat Gemfile.lock | tail -n 2 | grep -C2 "BUNDLED WITH" | tail -n 1 | xargs gem install bundler -v
fi

# If there's a Gemfile, then run `bundle install`
# It's assumed that the Gemfile will install Jekyll too
if [ -f Gemfile ]; then
    bundle install
fi
