#!/bin/bash

image_a_afficher=`ls miniatures`

for image in $image_a_afficher
do
	echo "<p><a href=image/$image <img src=$image alt="$image" title="$image"/> </p><br/>" >> galerie.html
done

