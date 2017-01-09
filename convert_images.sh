#!/bin/bash

# fonction permettant de créer un dossier miniature contenant toutes les miniatures des images du 
# dossier entré en argument

convert_image(){
	liste_fichier=$(`ls images`)
	create_miniature=$(`mkdir miniatures`)
	
	for fichier in $liste_fichier
	do
		convert $fichier -resize 100x100 $fichier_mini
		mv $fichier_mini /miniatures
	done
}
