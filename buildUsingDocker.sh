rm -Rf ./resources
rm -Rf ./public
docker run  -v ${PWD}:/src hugomods/hugo npm install postcss-cli && hugo -e production -b https://www.westlandsemolens.nl/