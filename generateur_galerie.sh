#!/bin/bash

./verif_fichier_traité.sh
./verif_exist_miniature.sh
./convert_images.sh
./generateur_entete_html.sh
./generateur_corps_html.sh
./generateur_pied_html.sh

