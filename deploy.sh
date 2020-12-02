rm -Rf ./resources
rm -Rf ./public
hugo -e production && rsync -avz --delete public/ herman@vps.polderman.net:/var/www/www.westlandsemolens.nl/
