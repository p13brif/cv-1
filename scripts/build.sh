#!/usr/bin/env bash
set -e # halt script on error

jekyll build
cd $TRAVIS_BUILD_DIR/site
sbt ++$TRAVIS_SCALA_VERSION package
