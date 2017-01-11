#!/bin/bash

# les trois premières fonctions permettent de vérifier et de préparer un dossier pour pouvoir 
# générer une page html avec les différentes miniatures.
# Les deux premières fonctions ne prennent qu'un seul paramètre $1 correspondant
# au dossier à traiter
# la troisième fonction prend deux paramètres $1 = le dossier à traiter et $2 la taille
# des miniatures


. verif_fichier_traite.sh 
verif_dossier_traite $1

. verif_image.sh
verif_presence_image $1

. verif_exist_miniature.sh 
verif_exist_miniature $1 $2

# ce script permet de générer la page html galerie.html ce script prend un paramètre $3
# qui correspond au nom de galerie.html  

./generateur_entete_html.sh $3


#./generateur_css.sh

