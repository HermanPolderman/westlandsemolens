#!/bin/sh
set -e

rm -Rf ./resources
rm -Rf ./public

# Install theme assets (Bootstrap, Font Awesome) and Dart Sass.
npm install

# sass-embedded provides the Dart Sass CLI used by Docsy.
PATH="$PWD/node_modules/.bin:$PATH" hugo -e production -b https://www.westlandsemolens.nl/
