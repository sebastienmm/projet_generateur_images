#/bin/bash

# Entete html généré en bash
if [ $3 != "galerie.html" ]
then
	mkdir galerie.html
	echo "!DOCTYPE html>
			<html>
				<head>
					<meta charset="utf-8">
				<title> Generateur d'image </title>
				</head>" >> galerie.html

	# corps html généré

	image_a_afficher=`ls miniatures`
	echo " <body> "
	for image in $image_a_afficher
	do
		echo "
				<p>
					<a href=images/$image <img src=$image alt="$image" title="$image"/>
				</p><br/>
		  	" >> galerie.html
	done
	echo " </body " >> galerie.html
else
	echo "!DOCTYPE html>
			<html>
				<head>
					<meta charset="utf-8">
					<title> Generateur d'image </title>
				</head>" >> $3

	# corps html généré
		echo "	<body> ">> $3

	image_a_afficher=`ls miniatures`

	for image in $image_a_afficher
	do
		echo "			<p>
						<a href=images/$image <img src=$image alt="$image" title="$image"/>
					</p><br/>
		  		" >> $3
	done
	echo  "</body> " >> $3
fi

