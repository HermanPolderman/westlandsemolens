git pull
sudo  docker-compose run --rm hugo -b https://westlandsemolens.polderman.net
#-d /var/www/westlandsemolens.polderman.net/"
rsync -avz --delete public/ /var/www/westlandsemolens.polderman.net/
