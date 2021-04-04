#!/usr/bin/env bash
set -e # halt script on error

cd $TRAVIS_BUILD_DIR _site/site/
jekyll build

weasyprint https://cv-emmanouil-brifas.netlify.app/ pdf/cv.pdf -s _template/pdf.css
