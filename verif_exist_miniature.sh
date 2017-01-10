
# fonction permettant de verifier l'existence d'un dossier nommé miniature dans le dossier traité

verif_exist_miniature(){

liste_fichiers=$(`ls $1`)

for fichier in liste_fichiers
do
	if [ "$fichier" = "miniatrures" ]
		echo " Le fichier miniatures existe déjà !! "
	else
		echo " La conversion des images en miniatures peut être réalisée "
		. convert_images.sh
		conversion_image 
	fi
done
		
}
