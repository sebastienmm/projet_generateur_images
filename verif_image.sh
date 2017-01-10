#!/bin/bash

# fonction permettant de vérifier la présence de fichier image dans le dossier entré 
# en argument

verif_presence_image(){
	
	compteur_image=0
		
	liste_fichier=`ls $1`
	#sortie=`exit`

	for fichier in $liste_fichier
	do
		if [[ "$fichier" = *.jpg ]] || [[ "$fichier" = *.png ]] || [[ "$fichier" = *.gif ]] || [[ "$fichier" = *.bmp ]]
		then
			compteur_image=$(( $compteur_image + 1))
			echo "$compteur_image"
		fi
	done
	if [ $compteur_image = 0 ]
	then
		echo " le dossier ne contient pas d'image "
		echo " Vous devait choisir un nouveau dossier "
		echo `exit`
	else	
		echo " Il y a $compteur_image images dans le dossier "
	fi
}
verif_presence_image $1
