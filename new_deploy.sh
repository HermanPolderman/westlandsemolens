rm -Rf ./resources
rm -Rf ./public
hugo -e production -b https://www.westlandsemolens.nl/
cd public
tar cvf ../westlandsemolens_build.tar.gz .
cd ..
scp westlandsemolens_build.tar.gz herman@vps.polderman.net:/home/herman/hugo/
rm westlandsemolens_build.tar.gz
