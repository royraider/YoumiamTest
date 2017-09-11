## Introduction
Ceci est un simple test ayant pour but de valider des acquis sur le framework Symfony2.

Aucune importance ne sera accordée au rendu visuel.

Nous serons avant tout attentif aux performances, à la scalabilité et la propreté du code propose.


Good luck and Have fun ! :)

`PS: Si une question n'est pas faite, pensez à laisser une petit commentaire pour donner votre idée. `

## Installation Test
1. Installer Symfony2 [2.7.x]
2. Importer et lier la base de donnée (youmiamtest.sql)
## Installation de bundle
1. Installer le FOSRestBundle
## Récupération de datas
1. Retourner la variable count égale au nombre de follower de l'id appeler dans le controller profileAction
2. Faire un service qui récupère l'ensemble des articles avec pour chacun: 
   1. les 3 derniers commentaires
   2. le nom du dernier ami ayant commenté chaque article
   3. le nombre d'autres amis l'ayant commenté
3. faire le twig qui affiche la liste d'articles à la suite, avec les 3 commentaires, l'ami et le nombre d'amis ayant commenté (MrX, MrX & 1 autre ami, MrX & X autres amis) [Aucune importance accordé au rendu visuel]
4. faire un call API GET articles
5. relier le service (3.2) au twig (3.3) & au call API (3.4)
## Entity & API
1. Créer un call Api GET Users/{id} qui récupère ces informations:
   1. en V1: Username
   2. en V2: Username, array commentaires {id,text}
   3. en V3: Username, array commentaires {id}
4. en V4: Username, array commentaires {id,text} (text without tag)
   1. `<@a:id:a@>` converti en en nom de l'article
## Colle
1. Mettre en place une solution pour récupérer de manière automatique les traduction du fichier trad.yml (elles sont correctes) ou de tout autres fichier yml de ce type et qu'elles soient correctement interprété par symfony2.
