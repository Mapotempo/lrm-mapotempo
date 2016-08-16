#!/bin/bash

VERSION=`echo "console.log(require('./package.json').version)" | node`

echo Building dist files for $VERSION...
mkdir -p dist
browserify -t browserify-shim src/* > dist/lrm-mapotempo.js
browserify -t uglifyify -t browserify-shim src/* | uglifyjs -c > dist/lrm-mapotempo.min.js

cp css/leaflet.routing.mapotempo.css dist/lrm-mapotempo.css

echo Done.
