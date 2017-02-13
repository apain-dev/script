/---------------------- Script de création de repo ----------------------------------------/

Ce script à pour but de creer un repo, de lui appliquer les droits ACL, de le clone et enfin de 
le remplir

Pour cela, le repo que vous avez clone contient trois fichiers :
	start.sh (le script)
	librairy (le dossier qui doit contenir votre librairy)
	to_copy (le dossierà remplir)

Voici comment remplir les dossiers : 

librairy :
	tousvosfichier.c
	Makefile
	include/
		vos.h

start   :
	Makefile
	include/
		my.h
		struct.h
	src/
		main.c
/-----------------------------------------------------------------------------------------/

Pour exécuter le script, ./start.sh

le script va d'abord vous demandez votre login epitech prenom.nom@epitech.eu (seulement lors de la 1er
execution).

Les prochains lancement nécessiteront seulement un nom de repo à creer.

/----------------------------------------------------------------------------------------/
# script
