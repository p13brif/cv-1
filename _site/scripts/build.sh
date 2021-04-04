#!/usr/bin/env bash
set -e # halt script on error

cd $TRAVIS_BUILD_DIR _site/site/
jekyll build

sudo apt-get install build-essential python3-dev python3-pip python3-setuptools python3-wheel python3-cffi libcairo2 libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info

sudo pip3 install weasyprint

weasyprint https://cv-emmanouil-brifas.netlify.app/ pdf/cv.pdf -s _template/pdf.css
