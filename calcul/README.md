# TP Calculatrice

*Corinne Ancourt, Fabien Coelho, Pierre Guillou*

L'objectif de cette séance de travaux pratiques est de réaliser une
petite calculatrice en mode texte, avec *JFLEX* et *CUP*.

## Objectif

On imagine une petite calculatrice en mode texte. Celle-ci effectue un
calcul sur des données flottantes en double précision (`Double`),
et peut stocker le résultat dans des variables.

Cela peut par exemple ressembler à :

```
2+3*4
## 14.0
sin(1)
## 0.8414709848078965
a = 2
## 2
b = a + 1
## 3
1/0
## Infinity
b
## 3
```

## Outils

Vous disposez des commandes :

 - **jflex**
  génère à partir d'un fichier de configuration une classe `Yylex`.
  Cette classe permet de découper un flux de caractères (`Reader`)
  en *tokens* (unités lexicales élémentaires).

 - **cup**
  génère à partir d'un fichier de configuration une classe `parser`
  et une classe `sym`. La première classe contient une méthode
  `parse` qui analyse la syntaxe d'un flux de token. La seconde
  contient les numéros des tokens pour la synchronisation avec l'analyseur
  lexical.

  Attention, votre `CLASSPATH` doit contenir les classes de bases
  de `cup` pour pouvoir compiler et exécuter.

Une calculatrice minimale vous est gracieusement fournie afin de démarrer
sur quelque chose qui marche.

Par ailleurs est mis à votre disposition un [Makefile](Makefile) qui permet
de construire automatiquement votre calculatrice à partir des fichiers
source (`.jflex` et `.cup`), lancer l'exécution, etc.

Pour compiler votre calculatrice, tapez simplement `make compile` qui
provoque la construction presque magique du projet. Pour compiler et lancer
directement votre prototype, tapez `make run` (ctrl-D pour sortir).
Pour nettoyer les fichiers générés `make clean`.

```sh
make compile   # compilation de la calculatrice
make run       # lancement, ctrl-D pour sortir
make clean     # nettoyage
```

Lancer la commande `make run` afin de vérifier que l'installation est opérationnelle.
La calculatrice accepte de simples entiers et peut les additionner.
En cas dysfonctionnement, éditer le fichier `Makefile` et ajuster la variable `JFLAGS`
pour correspondre à la version disponible de `cup`.

## Suggestion de développement progressif

Regarder attentivement la version initiale des fichiers [calcul.jlex](calcul.jlex)
et [calcul.cup](calcul.cup).

Quelques idées pour développer progressivement votre calculette pour une
expression :

1. accepter une valeur double de la forme `31.4159E-1`

1. ajouter l'addition et la soustraction (associativité ?)

1. ajouter la multiplication et la division (associativité, précédence ?)

1. ajouter l'inversion (moins unaire)

1. ajouter les parenthèses

1. ajouter des fonctions (sinus, cosinus, tangente, racine, logarithmes, etc.)

   Ces fonctions sont disponibles dans la classe `Maths` de Java.

1. ajouter un opérateur puissance

1. ajouter les constantes *pi* *e*

   Ces constants sont prédéfinies dans la class `Maths` de Java.

1. ajouter l'affectation à une variable, et son utilisation (a=4, b=a\*4)
  
   - que se passe-t-il si la variable n'existe pas ?

   - prévoir de pouvoir afficher toutes les variables

1. ajouter les booléens (`true` et `false`)

   Caster directement à une valeurs double pour n'utiliser qu'un type~!

1. ajouter les expressions logiques (et ou non…)

1. ajouter les comparaisons (*a <= 7*)

1. pouvoir quitter la calculette proprement !

   La fonction `System.exit(0)` permet d'interrompre un programme.

1. ajouter le `;` comme séparateur d'expressions

1. autoriser les commandes vides

1. penser aux erreurs de syntaxe (ne pas arrêter la calculatrice !)
   *redéfinir le nombre de token absorbé si nécessaire…*

1. ajouter un opérateur ternaire conditionnel de type `cond ? v1 : v2`

1. ignorer des commentaires (fin de ligne et zone) dont la syntaxe est à définir

1. accepter les valeurs spéciales `Infinity`, `NaN`…

1. combiner une assignation à un opérateur~: `+= -= *=`

1. ajouter la constante π

1. ajouter un terme de multiplication implicite pour accepter~: *2 π r*

1. ajouter la puissance directe π²

1. vérifier que *4/3 π r³* est correctement interprété
