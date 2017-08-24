Version 2.4 avec calcul formel et micromondes de Smullyan; le mode lent est risqué: Il faut mettre un "palimpseste" ou initialiser la tortue 

Pour programmer en ligne: [la version française](https://alainbusser.github.io/Sofus/Sofus_fr.html)

To program easy-greasy: [the english version](https://alainbusser.github.io/Sofus/Sofus_en.html)

programa en línea [aqui](https://alainbusser.github.io/Sofus/Sofus_es.html)

(muchas gracias Jose Manuel Ruiz Gutierrez)

Le [manuel de Manuel](https://alainbusser.github.io/Sofus/MANUAL DE SOFUS.pdf)

[attention]: https://cdn0.iconfinder.com/data/icons/woocons1/Sign%20Warning.png "Attention !"

![logo](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/sophus1.png)

La parodie de La Fontaine ci-dessous, inspirée par la signature du contrat MEN-Microsoft France, est bien entendue sous licence Creative Commons

>
>## Le Lobbyiste et le Libriste
>
>La raison du plus fort est toujours la meilleure :
>
>Nous l'allons montrer tout à l'heure.
>
>Un Libriste codait sans intérêt
>
>Dans un lieu un peu austère.
>
>Un Lobbyiste survient à jeun qui allait au ministère,
>
>Et que le fric en ces lieux attirait.
>
>Qui te rend si hardi de troubler mon codage ?
>
>Dit cet animal plein de rage :
>
>Tu seras châtié de ta témérité.
>
>- Sire, répond le Libriste, que votre Majesté
>
>Ne se mette pas en colère ;
>
>Mais plutôt qu'elle considère
>
>Que je me vais programmant
>
>Dans le courant,
>
>Plus de vingt millions au-dessous d'Elle,
>
>Et que par conséquent, sans aucune thune,
>
>Je ne puis troubler sa fortune.
>
>- Tu la troubles, reprit cette bête cruelle,
>
>Et je sais que de moi tu médis l'an passé.
>
>- Comment l'aurais-je fait si je n'avais pas de bouc ?
>
>Reprit le Libriste, je n'étais encore point chez Facebook.
>
>- Si ce n'est toi, c'est donc ton frère.
>
>- Je n'en ai point. 
>
>- C'est donc quelqu'un des tiens :
>
>Car vous ne m'épargnez guère,
>
>Vous, vos licences libres, et vos communs biens.
>
>On me l'a dit : il faut que je me venge.
>
>Là-dessus, encouragé par ses politiques succès,
>
>Le Lobbyiste l'emporte, et puis le mange,
>
>Sans autre forme de procès.
>
>
>(d'après Jean de La Fontaine)

Sophus est un langage de programmation pour l'enseignement de l'algorithmique au collège. Parmi ses particularités il y a le fait que Sophus

 * est proche de la langue naturelle (les actions sont décrites par des verbes, etc) 

 * fait très peu appel aux affectations de variables (les variables sont initialisées puis modifiées *in situ*)

 * gère les fractions les plus courantes, y compris les pourcentages, en français (on peut par exemple augmenter une variable d'un quart avec *augmenter v de 1 quart*) 

 * gère les chaînes de caractères avec la concaténation

 * est particulièrement adapté aux calculs différentiel et intégral ainsi qu'à la statistique descriptive

 * gère les :turtle: (sans limite sur le nombre de :turtle:)
 
 * permet un peu de calcul formel grâce à Coffeequate

[Voir ici](http://irem.univ-reunion.fr/spip.php?rubrique173) pour en savoir plus et des exemples


# Logique

Voici une description d'un micromonde de logique appelé "Transylvanie" par Raymond Smullyan:

 * Deux sortes d'habitants, indiscernables à l'aspect, peuvent être rencontrés en Transylvanie: 
  * Les humains ![humain](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/man.png) ne mentent jamais: On peut avoir confiance en eux, à condition de les reconnaître !
  * Les vampires ![vampire](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/vampire.png) sont de fieffés menteurs: Ils ne disent jamais la vérité (on les dit d'origine crétoise)
 * Mais une mystérieuse épidémie de folie est survenue en Transylvanie:
  * Les fous ![fou](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/crazy.png) ne croient qu'en des faussetés; par exemple ils sont tous persuadés que 2+2=5 !
  * Les sains d'esprit ![sain](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/healthy.png) croient tout ce qui est vrai et uniquement ce qui est vrai.
  Ainsi, un vampire fou dira que 2+2=4 puisque, étant fou, il ne croit pas que 2+2=4, mais étant menteur, il prétendra que si !
 * Parmi les humains, on essaye de soigner les fous, pour cela on les place dans des asiles, où on peut rencontrer
  * les médecins ![toubib](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/medical.png) qui soignent bien les malades ... sauf si eux-mêmes sont fous !
  * les patients eux-mêmes ![patient](https://raw.githubusercontent.com/AlainBusser/Sophus/master/img/sick.png) qui sont venus faire soigner leur folie. Mais que se passe-t-il si un patient n'est pas fou ?
 

Le dossier "Sofus_Blockly" contient une version hors ligne de Blockly, munie de toutes les fonctions mathématiques de base de Blockly, ainsi que la version numérique de Sofus, avec le graphisme tortue.


![Pi par Viète](https://raw.githubusercontent.com/AlainBusser/Sophus/master/SophusPi.png)





Le dossier "ancien" contient l'ancienne version, sous forme de webApp, qui nécessitait l'usage du clavier pour rédiger.

Le fichier sophus.html contient l'interpréteur Sophus avec une sortie en français et la liste des instructions:  Cliquer sur "syntaxe" pour la voir. Les mots clés sont 

montrer, entrer, mettreDans, carré, cube, racine, sinus, cosinus, tangente, sin, cos, tan, éleverAuCarré, éleverAuCube, élever ... à la puissance, inverser, extraireLaRacineDe, arrondir, tronquer, doubler, tripler, quadrupler, quintupler, sextupler, octupler, décupler, centupler, incrémenter, décrémenter, augmenter, diminuer, multiplier, diviser, Si, àMoinsQue, pour, dans

La syntaxe est déductible des fichiers coffee

Le fichier responsiveSophus.html est une version allégée sans liste des instructions.


# Programmation CoffeeScript

Pour utiliser le langage CoffeeScript, il faut l'installer avec npm (qui vient avec  [NodeJS](https://nodejs.org/en/download/)) :
```bash
    toto@pc-ubuntu:~$ npm install -g coffee-script
```
Puis demander à scruter toutes modifications pour provoquer une compilation automatique (depuis le dossier javascript concerné) :
```bash
    toto@pc-ubuntu:~$ cd dev/Sophus/Sophus_blockly/javascript
    toto@pc-ubuntu:~/dev/Sophus/Sophus_blockly/javascript$ coffee --watch --compile -b .
```

![alt text][attention] l'option -b est importante, elle empêche CoffeeScript d'encapsuler la Classe Tortue dans une fonction. Sans cette option vous aurez l'erreur "Tortue est inconnue !" dans la console Javascript.



Les icônes de Sofus ont été créées avec la suite logicielle Blender3D; la tortue a été "dessinée" avec l'éditeur de textes Geany; les icônes de la tortue proviennent du site [gemoji](http://emojipedia.org/)




Auteurs:

 * Alain Busser
 
 * Patrice Debrabant

 * Patrick Raffinat

 * Florian Tobé
