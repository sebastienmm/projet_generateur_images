#!/bin/bash

# fonction permettant de créer un dossier miniature contenant toutes les miniatures des images du 
# dossier entré en argument

convert_image(){
	liste_fichier=`ls images`
	taille=$2

	mkdir miniatures
	
	for fichier in $liste_fichier
	do
		miniphoto="$fichier"
		convert images/$fichier -resize $taille "$miniphoto"
		chmod 777 $miniphoto
		mv $miniphoto miniatures/
	done
}
