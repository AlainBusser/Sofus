Version 1.4 avec tortues


![logo](https://raw.githubusercontent.com/AlainBusser/Sophus/master/sophus1.png)



Sophus est un langage de programmation pour l'enseignement de l'algorithmique au collège. Parmi ses particularités il y a le fait que Sophus

 * est proche de la langue naturelle (les actions sont décrites par des verbes, etc) 

 * fait très peu appel aux affectations de variables (les variables sont initialisées puis modifiées *in situ*)

 * gère les fractions les plus courantes, y compris les pourcentages, en français (on peut par exemple augmenter une variable d'un quart avec *augmenter v de 1 quart*) 

 * gère les chaînes de caractères avec la concaténation

 * est particulièrement adapté aux calculs différentiel et intégral ainsi qu'à la statistique descriptive

 * donne une approche de la géométrie repérée inspirée par le programme d'Erlangen, par exemple pour appliquer une translation de vecteur u à un point M on écrit *augmenter M de u*

[Voir ici](http://irem.univ-reunion.fr/spip.php?rubrique173) pour en savoir plus et des exemples




Le dossier "Sofus_Blockly" contient une version hors ligne de Blockly, munie de toutes les fonctions mathématiques de base de Blockly, ainsi que la version numérique de Sofus, avec le graphisme tortue.


![Pi par Viète](https://raw.githubusercontent.com/AlainBusser/Sophus/master/SophusPi.png)





Le dossier "ancien" contient l'ancienne version, sous forme de webApp, qui nécessitait l'usage du clavier pour rédiger.

Le fichier sophus.html contient l'interpréteur Sophus avec une sortie en français et la liste des instructions:  Cliquer sur "syntaxe" pour la voir. Les mots clés sont 

montrer, entrer, mettreDans, carré, cube, racine, sinus, cosinus, tangente, sin, cos, tan, éleverAuCarré, éleverAuCube, élever ... à la puissance, inverser, extraireLaRacineDe, arrondir, tronquer, doubler, tripler, quadrupler, quintupler, sextupler, octupler, décupler, centupler, incrémenter, décrémenter, augmenter, diminuer, multiplier, diviser, Si, àMoinsQue, pour, dans

La syntaxe est déductible des fichiers coffee

Le fichier responsiveSophus.html est une version allégée sans liste des instructions.


 # Programmation CoffeeScript

Pour utiliser le langage CoffeeScript, il faut l'installer avec npm (qui vient avec  [NodeJS](https://nodejs.org/en/download/)) :
    toto@pc-ubuntu:~$ npm install -g coffee-script

Puis demander à scruter toutes modifications pour provoquer une compilation automatique (depuis le dossier javascript concerné) :
    toto@pc-ubuntu:~$ cd dev/Sophus/Sophus_blockly/javascript
    toto@pc-ubuntu:~/dev/Sophus/Sophus_blockly/javascript$ coffee --watch --compile -b .

ATTENTION : l'option -b est importante, elle empêche CoffeeScript d'encapsuler la Classe Tortue dans une fonction. Sans cette option vous aurez l'erreur "Tortue est inconnue !" dans la console Javascript.



Les icônes de Sofus ont été créées avec la suite logicielle Blender3D; la tortue a été "dessinée" avec l'éditeur de textes Geany; les icônes de la tortue proviennent du site [gemoji](http://emojipedia.org/)




Auteurs:

 * Alain Busser

 * Patrick Raffinat

 * Florian Tobé
