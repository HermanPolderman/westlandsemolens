rm -Rf ./resources
rm -Rf ./public
docker run  -v ${PWD}:/src hugomods/hugo hugo -e production -b https://www.westlandsemolens.nl/