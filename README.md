# Compil 2020-2021

Semaine PSL - Mars 2021 - INformatique Fondamentale Et CompilaTion (INFECT)

*pour l'humour de l'acronyme, voir @hermant.*

## Connection SSH

Vous devez pouvoir vous connecter à l'école avec votre identifiant `pnom`,
en utilisant un client SSH, sur n'importe quel OS. Dans un terminal de
commande, en passant par la machine intermédiaire `ssh-eleves.mines-paristech.fr` :

```shell
ssh aturing@ssh-eleves.mines-paristech.fr
ssh cal119
```

Une fois sur cette machine vous disposez de commandes diverses :

- `ls` pour regarder le contenu du répertoire courant
- `cd dossier` pour changer de répertoire (`..` pour remonter)
- `nano fichier` éditeur très simple en ligne de commande
- `git …` gestionnaire de sources

Configurez votre `git` sur `cal119` :

```sh
git config --global --add user.name "Alan Turing"
git config --global --add user.email "alan@bletchley-park.uk"
git config --global --add pull.rebase true
```

## Connection au GitLab

Finalisez votre compte sur le [GitLab du CRI](https://gitlab.cri.mines-paristech.fr/).
Vous avez été enregistré avec votre adresse de messagerie officielle.

Allez sur le projet [Compile 2020](https://gitlab.cri.mines-paristech.fr/compil-2020/compil-2020).
*Forkez* le projet (bouton *Fork* en haut à droite), puis créez une copie de travail de votre
version sur `cal119` via `https`.

```sh
git clone https://gitlab.cri.mines-paristech.fr/<votre-id-gitlab>/compil-2020
```

Allez dans le répertoire créé pour l'occasion et regardez son contenu :

```sh
cd compil-2020
ls
```

Vous devez y voir un fichier `README.md` et deux dossiers correspondant aux deux sujets
de TP : `calcul` et `pascal`. Pour ces TPs, vous prendrez soin de faire des `git commit`
et `git push` réguliers pour garder trace de vos développements et sauvegarder votre
projet.

## TP Calculatrice

Allez dans le sous-répertoire [calcul](calcul/) et faire le TP décrit dans le fichier `README.md`.

## TP Pascal

Allez dans le sous-répertoire [pascal](pascal/) et faire le TP décrit dans le fichier `README.md`.
