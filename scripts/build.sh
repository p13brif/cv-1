#!/usr/bin/env bash
set -e # halt script on error

jekyll build
cd $TRAVIS_BUILD_DIR/_site/site
