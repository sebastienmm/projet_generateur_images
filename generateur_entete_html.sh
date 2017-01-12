#/bin/bash

# Entete html généré en bash
	
	
	echo '' > galerie.html
	echo "<!DOCTYPE html>
			<html>
				<head>
					<meta charset="utf-8">
				<title> Generateur d'image </title>
				</head>" > galerie.html

	# corps html généré

	image_a_afficher=`ls miniatures`
	echo "		 <body> " >> galerie.html
	for image in $image_a_afficher
	do
		echo "
					<p>
						<a href=images/$image> <img src=miniatures/$image alt="$image" title="$image"/></a>
					</p><br/>
		  	" >> galerie.html
	done
	echo " 		</body>
			</html> " >> galerie.html
	


