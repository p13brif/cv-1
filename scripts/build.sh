#!/usr/bin/env bash
set -e # halt script on error

cd $TRAVIS_BUILD_DIR _site/site/
jekyll build
