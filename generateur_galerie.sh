#!/bin/bash

./verif_fichier_traite.sh $1
./verif_exist_miniature.sh $2
./convert_images.sh
./generateur_entete_html.sh
./generateur_corps_html.sh
./generateur_pied_html.sh
./generateur_css.sh

