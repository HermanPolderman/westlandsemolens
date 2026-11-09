#!/bin/sh
set -e

# hugomods/hugo provides Hugo extended, Go and Git. Node.js is added so that
# npm can install Docsy's Bootstrap/Font Awesome assets and Dart Sass.
docker run --rm -v "$PWD:/src" -w /src hugomods/hugo:0.165.0 \
  sh -c "apk add --no-cache nodejs npm && ./build.sh"
