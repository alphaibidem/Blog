#installer mariadb(image)
docker pull mariadb

#installer phpmyadmin(image)
docker pull phpmyadmin

#installer wordpress(image)
docker pull wordpress

#créer le reseau SAE23_alpha
docker network create sae23_alpha

#créer un container (bade de données)
docker run --detach -p 3306:3306 --network sae23_alpha --name base_alpha --volume "C:\Users\userlocal\Documents\SAE23\base:/var/lib/mysql" --env MARIADB_USER=alpha --env MARIADB_PASSWORD=alphapwd --env MARIADB_ROOT_PASSWORD=toor --env MARIADB_DATABASE=alpha_ibidem mariadb

#installer un container phpmyadmin
docker run --name phpmyadmin_alpha -d --network sae23_alpha -p 9000:80 --env PMA_HOST=base_alpha phpmyadmin

#installer un container wordpress
docker run --name alpha_wordpress --network sae23_alpha -p 80:80 -e WORDPRESS_DB_HOST=base_alpha -e WORDPRESS_DB_USER=alpha -e WORDPRESS_DB_PASSWORD=alphapwd -e WORDPRESS_DB_NAME=alpha_ibidem --volume "C:\Users\userlocal\Documents\SAE23\html:/var/www/html" -d wordpress







