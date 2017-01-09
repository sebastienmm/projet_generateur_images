#!/bin/bash

. verif_fichier_traite.sh 
verif_dossier_traite 

. verif_image.sh
verif_presence_image

. verif_exist_miniature.sh 
verif_exist_miniature  

. convert_images.sh
convert_image

t./generateur_entete_html.sh
#./generateur_corps_html.sh
#./generateur_pied_html.sh
#./generateur_css.sh

