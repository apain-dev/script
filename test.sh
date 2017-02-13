#!/bin/bash

echo -e "
\033[31;1mAttention vous devez être dans le dossier parents de celui qui doit être créer\033[0m
"

read -p 'appuyez sur enter pour valider, espace pour quitter' validation
if [  -z $validation]
then
    echo -e "le dossier sera inscrit ici :\033[31m `pwd`\033[0m
    "
else
    exit
fi

echo -e "\033[34m-------------------------------------------------------\033[0m"
if [ -z $SCRIPT_INIT ]
then
  while [ -z $login ]
  do
  read -p 'veuillez entrer votre login epitech (prenom.nom@epitech.eu) ' login
  echo "
  "
done
  echo "export SCRIPT_INIT="$login >> ~/.bashrc
  source ~/.bashrc
  echo "veuillez redemarrer le script dans un nouveau terminal"
  exit 1
else
  echo -e "\033[0mVoici votre nom utilisateur qui sera utilisé :\033[36m$SCRIPT_INIT\033[0m"
fi

while [ -z $nom ]
do
read -p 'Entrez le nom du repo :' nom
if [ -z $nom ]
then
    echo "vous devez rentrer un nom de repo"
else
    echo -e "
nom du repo : \033[31m$nom\033[0m"
fi
done

echo -e "\033[34m-------------------------------------------------------\033[0m
"
## création du repo :

blih -u $SCRIPT_INIT repository create $nom
blih -u $SCRIPT_INIT repository setacl $nom ramassage-tek r
echo -e "\033[31mRepo crée && ACL appliqué
"

## adresse du clonage :
git clone git@git.epitech.eu:/$SCRIPT_INIT/$nom
echo "Repo cloné
"
## déplacement dans le repo
echo -e "\033[34m-------------------------------------------------------\033[0m
"
cd $nom

echo -e "\033[31mDébut du scrypt :
"

## fill du dossier
mkdir include
cp ~/script/start/include/* ./include/
echo -e "Dossier include copié et complété
"
mkdir src
cp ~/script/start/src/* ./src/
echo -e "dossier src créé et complété
\033[0m"

cp ~/script/start/Makefile .
mkdir lib my

mv my lib/
cd lib/my/
cp ~/script/librairy/*.c .
cp ~/script/librairy/Makefile .
mkdir include
cp ~/script/librairy/include/* include/
make re -s
make clean -s
cd ../../
echo -e "\033[31mvotre lib est prête
"
echo -e "votre dossier est prêt\033[0m
"
