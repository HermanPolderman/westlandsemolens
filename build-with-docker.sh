git pull
sudo  docker-compose run --rm hugo -b https://www.westlandsemolens.nl
#-d /var/www/westlandsemolens.polderman.net/"
rsync -avz --delete public/ /var/www/www.westlandsemolens.nl/
