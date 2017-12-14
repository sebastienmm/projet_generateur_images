#!/bin/bash

# fonction permettant de verifier si le premier argument du générateur de galerie est renseigné et
# si l'argument correspond à un dossier existant

verif_dossier_traite() {
	
	dossier_a_traite=$1

	if [ -z $dossier_a_traite ]
	then
		read -p "Entrez le chemin absolu du fichier à traité" dossier_a_traite 
	else
		if [ -e $dossier_a_traite ] && [ -d $dossier_a_traite ]
		then
			echo "le dossier existe"
		else
			echo " Le dossier n'existe pas "
		fi
	fi
}
