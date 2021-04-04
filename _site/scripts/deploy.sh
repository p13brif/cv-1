#!/usr/bin/env bash
set -e # halt script on error

zip -r website.zip _site

curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer $NETLIFYKEY" \
     --data-binary "@website.zip" \
     https://cv-emmanouil-brifas.netlify.app/
