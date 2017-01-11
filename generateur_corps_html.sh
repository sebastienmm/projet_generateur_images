#!/bin/bash

image_a_afficher=`ls miniatures`
if [ $3 != galerie.html ]
for image in $image_a_afficher
do
	echo "<body>
			<p>
				<a href=images/$image <img src=$image alt="$image" title="$image"/>
			</p><br/>
		  </body>" >> galerie.html
done

