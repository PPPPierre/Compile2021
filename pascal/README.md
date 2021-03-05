# Réalisation d'un compilateur

## Outils disponibles

L'objectif de cette séance de travaux pratiques est de réaliser un
petit compilateur pour un pseudo **pascal**, ou tout autre syntaxe
de votre choix, avec `jflex` et `cup`, pour une mini machine.

## Machine virtuelle minimale `mach.py`

La machine cible est une machine à pile (il n'y a pas de registre)
avec des mémoires de programme et de données, dont les opérations
fonctionnent sur des entiers exclusivement. Elle est exécutée avec
la commande `mach.py`.

Elle comprend 17 instructions élémentaires, dont voici une description
rapide :

 - `PUSH x` met l'entier x sur la pile

 - `LOAD` accès mémoire à l'adresse en tête de pile

 - `STORE` stocke l'élément en tête de pile (adresse, valeur)

 - `SWAP` inverse les deux éléments en tête de la pile

 - `ADD SUB MUL DIV AND OR` opérations arithmétiques et logiques
   sur deux entiers en tête de pile, résultat sur la pile.

 - `NOT` opération logique unaire

 - `BEZ x`, `BGZ x` branchements conditionnels selon l'élément en tête de pile.

 - `GOTO` branchement vers l'adresse en tête

 - `STOP` arrêt de la machine

 - `IN` et `OUT` entrées et sorties entre la pile et l'écran ou le clavier

## Assembleur minimum `asm.py`

Nous fournissons un assembleur qui permet de convertir du code symbolique avec
des labels vers du code machine. Il permet également de réserver de la mémoire
statiquement.

## Conversion vers un assembleur machine `to_nasm.py`

Permet de générer de l'assembleur x86 à partir de l'assembleur précédent,
et de générer un vrai exécutable.

## Makefile

Un fichier `Makefile` est fournit. Quelques règles intéressantes :

 - `make foo.i` génération de l'assembleur

 - `make foo.o` génération de l'objet (résolution des symboles)

 - `make foo.x` exécution du programme

## Développement progressif

Quelques idées pour développer *progressivement* votre compilateur,
dans le bon sens.

Il est très important de tester au fur et à mesure de vos travaux.
Le compilateur doit produire le texte assembleur
du programme compilé, qui peut apparaître sur la sortie standard
par exemple.

Attention d'ajouter des nouveaux tests à chaque étape sans effacer
les tests précédents, de manière à pouvoir les ré-exécuter si nécessaire.
Pour cela, créer des fichiers `test_NN.p` autant quen de besoin.

Choisir tout d'abord une syntaxe pour votre langage (expressions,
variables, fonctions, arguments), par exemple en vous inspirant du
langage *Pascal*.

## Langage de base

1. définir une expression comme une contante entière

1. afficher une expression

1. un programme est une liste d'instructions

1. ajouter les opérations arithmétiques + et - (associativité ?)

1. ajouter les parenthèses

1. ajouter les opérations * et / (associativité, précédence ?)

1. permettre des commentaires dans le programme (ligne, zones)

1. déclarer/définir une variable scalaire

1. affectation d'une expression à une variable scalaire

1. utilisation d'une variable dans une expression

1. entrée standard vers un scalaire

1. condition *if-then-else*, condition vrai si entier non nul

1. ajouter aussi *if-then*, sans clause else…

1. opérations moins unaire, modulo

1. boucle *while* -- algorithme d'Euclide pour le calcul du PGCD

1. définition de tableaux d'entier de taille constante, fixée à la compilation

1. déclaration d'une liste de variables, qui peuvent être des tableaux…

1. initialisation d'une variable scalaire avec sa déclaration

1. constantes booléennes *true* et *false*

1. comparaisons entières \< \<= \> \>= = !=

   algorithme du crible d'Ératosthène pour trouver les nombres premiers

1. calcul des expression booléennes (et, ou, not)

   attention, l'opérateur NOT de la machine n'est pas *logique* mais *binaire* !

1. fonction système `exit(int)` qui arrête le programme en laissant la valeur sur la pile

## Fonctions

1. procédures simples : pas de retour, pas de paramètres

1. fonctions avec retour et commande de retour d'une valeur (`return`)

   on pourra différencier syntaxiquement les fonctions des procédures

1. ajouter des arguments passés par valeur aux procédures et fonctions

1. avoir des variables de fonction locales

1. déclaration de variable globales explicites

1. fonctions récursives : (par exemple factorielle)

   - sauvegarde dans les piles des variables \textbf{locales} de la fonction\ldots

   - on pourra différencier syntaxiquement la déclaration de ces fonctions

1. vérifier si possible le nombre d'arguments lors des appels

## Développements avancés

1. construction `case` choix multiples avec des constantes entières

1. construction `elif`  intermédiaire

1. définitions de constantes symboliques (substituées par le *lexer*)

1. ajouter un type pointeur sur entier (déclaration, référencement, déréférencement…)

1. passage d'arguments scalaire par référence (par pointeur, modifiables)

1. passage d'arguments tableaux par référence

1. ajouter un opérateur factoriel

1. typage : conversion entier booléen quand nécessaire seulement

   ajouter la déclaration de variables booléennes dont les valeurs sont toujours limitées à 0 ou 1.

1. si des évaluations d'expression sont utilisées plusieurs
   fois (modulo ? autre ?), utiliser des variables temporaires

1. faire une évaluation des expressions logiques rapide (Vrai OU x est Vrai)

1. initialisation d'un tableau avec sa déclaration

1. ajouter une allocation dynamique de tableaux dans la zone de données
  (on ne s'occupera pas de libérer la mémoire…)

1. implémenter une évaluation partielle des expressions entières

1. vérifier que les accès de tableaux sont dans les bornes déclarées
