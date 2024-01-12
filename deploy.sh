sudo ./buildUsingDocker.sh
sudo chown -R herman *
sudo chgrp -R herman *
rsync -avz --delete public/ /var/www/www.westlandsemolens.nl/