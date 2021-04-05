git pull
sudo  docker-compose run --rm hugo -e production -b https://www.westlandsemolens.nl/
sudo chown -R herman *
sudo chgrp -R herman *
rsync -avz --delete public/ /var/www/www.westlandsemolens.nl/
