#!/bin/bash

# fonction permettant de créer un dossier miniature contenant toutes les miniatures des images du 
# dossier entré en argument

convert_image(){
	liste_fichier=`ls images`
	mkdir miniatures
	
	for fichier in $liste_fichier
	do
		miniphoto="mini_$fichier"
		convert images/$fichier -resize 100x100 "$miniphoto"
		chmod 777 $miniphoto
		mv $miniphoto miniatures/
	done
}
