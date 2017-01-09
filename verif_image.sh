#!/bin/bash

# fonction permettant de vérifier la présence de fichier image dans le dossier entré 
# en argument

verif_presence_image(){
	
	compteur_image=0
	tableau_format=('*.jpg' '*.png' '*.gif' '*.bmp')	
	liste_fichier=`ls $1`
	#sortie=`exit`

	for fichier in $liste_fichier
	do
		for format in $tableau_format
		do
			if [ $fichier == $format ]
			then
				compteur_image= $compteur_image + 1
			else
				compteur_image= $compteur_image	
			fi
		done
	done
	if [ $compteur_image = 0 ]
	then
		echo " le dossier ne contient pas d'image "
		echo " Vous devait choisir un nouveau dossier "
		echo `exit`
	else	
		echo " Il y a $compteur_image dans le dossier "
	fi
}
