Version 1.4 avec tortues






Sophus est un langage de programmation pour l'enseignement de l'algorithmique au collège. Parmi ses particularités il y a le fait que Sophus

-- est proche de la langue naturelle (les actions sont décrites par des verbes, etc) 

-- fait très peu appel aux affectations de variables (les variables sont initialisées puis modifiées *in situ*)

-- gère les fractions les plus courantes, y compris les pourcentages, en français (on peut par exemple augmenter une variable d'un quart avec *augmenter v de 1 quart*) 

-- gère les chaînes de caractères avec la concaténation

-- est particulièrement adapté aux calculs différentiel et intégral ainsi qu'à la statistique descriptive

-- donne une approche de la géométrie repérée inspirée par le programme d'Erlangen, par exemple pour appliquer une translation de vecteur u à un point M on écrit *augmenter M de u*

[Voir ici](http://irem.univ-reunion.fr/spip.php?rubrique173) pour en savoir plus et des exemples



Le fichier sophus.html contient l'interpréteur Sophus avec une sortie en français et la liste des instructions:  Cliquer sur "syntaxe" pour la voir. Les mots clés sont 

montrer, entrer, mettreDans, carré, cube, racine, sinus, cosinus, tangente, sin, cos, tan, éleverAuCarré, éleverAuCube, élever ... à la puissance, inverser, extraireLaRacineDe, arrondir, tronquer, doubler, tripler, quadrupler, quintupler, sextupler, octupler, décupler, centupler, incrémenter, décrémenter, augmenter, diminuer, multiplier, diviser, Si, àMoinsQue, pour, dans

La syntaxe est déductible des fichiers coffee

Le fichier responsiveSophus.html est une version allégée sans liste des instructions.


Le dossier "bloquement" contient une version hors ligne de Blockly, munie de toutes les fonctions mathématiques de base de Blockly, ainsi que la version numérique de Sophus.

![Pi par Viète](https://raw.githubusercontent.com/AlainBusser/Sophus/master/SophusPi.png)





Auteurs:

-- Alain Busser

--Patrick Raffinat

--Florian Tobé
