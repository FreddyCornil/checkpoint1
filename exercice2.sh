#!/bin/bash

if [[ $# -eq 0 ]]; then # Vérification des arguments
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
else 
	for utilisateur in $@ # pour chaque arguments
	do
		if ( ! id "$utilisateur" &>/dev/null; ); then
		    sudo useradd -m -p $(openssl passwd -1 motdepasseimpose) "$utilisateur" # Créer l'utilisateur
		    if [ $? -eq 0 ]; then
            	echo "L'utilisateur $utilisateur a été créé"
            fi
		else 
			echo "L'utilisateur $utilisateur existe déjà"
		fi
	done
fi
