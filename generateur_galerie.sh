#!/bin/bash

. verif_fichier_traite.sh 
verif_dossier_traite $1

. verif_image.sh
verif_presence_image $1

#. verif_exist_miniature.sh 
#verif_exist_miniature $1 

#. convert_images.sh
#convert_image $1

#./generateur_entete_html.sh
#./generateur_corps_html.sh
#./generateur_pied_html.sh
#./generateur_css.sh

