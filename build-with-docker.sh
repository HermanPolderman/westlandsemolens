git pull
sudo  docker-compose run --rm hugo -e production -b https://www.westlandsemolens.nl/
sudo rsync -avz --delete public/ /var/www/www.westlandsemolens.nl/
