#!/bin/bash

# fonction permettant de vérifier la présence de fichier image dans le dossier entré 
# en argument

verif_presence_image(){
	
	compteur_image=0
	compteurbis_image=0
		
	liste_fichier=`ls $1`
	liste_images=`ls images`
	
	

	for fichier in $liste_fichier
	do
		if [ "$fichier" = "images" ]
		then
			for image for $liste_images
			do
				if [[ "$image" = *.jpg ]] || [[ "$image" = *.png ]] || [[ "$image" = *.gif ]] || [[ "$image" = *.bmp ]]
				then
					compteurbis_image=$(( $compteurbis_image + 1))
					echo "$compteurbis_image"
				fi
			done
		echo " Le dossier images contient $compteurbis_image images"

		elif [[ "$fichier" = *.jpg ]] || [[ "$fichier" = *.png ]] || [[ "$fichier" = *.gif ]] || [[ "$fichier" = *.bmp ]]
		then
			mv $fichier images/
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

