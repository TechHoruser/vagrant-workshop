#!/bin/bash

#sudo rm -R /vagrant/Nutriscan
#sudo rm /var/www/html/Nutriscan

source /vagrant/config/main.sh

if [ ! -d "/var/www/html" ]; then
	echo "LAMP no instalado, ejecutar: \"vagrant reload --provision-with lamp\""

else
    if ! which git; then
        echo "GIT no instalado, por favor ejecutar: \"vagrant reload --provision-with dependencies\""
    else
	echo "Nombre del directorio: $proyect_folder"
	echo "URL del proyecto: $url_repository"

	# Create project folder
	if [ ! -d "/var/www/html/$project_folder" ]; then
		mkdir /var/www/html/$project_folder

	fi

	# Create repository
	if [ ! -d "$project_folder/.git" ]; then
		echo "Clonación del repositorio"
		git clone "$url_repository" /var/www/html/"$project_folder"
	fi
    fi
fi
