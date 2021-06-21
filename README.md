# Eqla - Formation Laravel
## Table des matières
- [Eqla - Formation Laravel](#eqla---formation-laravel)
  - [Table des matières](#table-des-matières)
  - [1. Introduction à Laravel](#1-introduction-à-laravel)
  - [2. Qu'est-ce qu'un Framework ?](#2-quest-ce-quun-framework-)
  - [3. Installation](#3-installation)
    - [3.1 Installation via Composer](#31-installation-via-composer)
    - [3.1.1 Windows](#311-windows)
    - [3.1.2 Linux, Unix et macOS](#312-linux-unix-et-macos)
    - [3.2 Installation via l'installeur Laravel](#32-installation-via-linstalleur-laravel)

## 1. Introduction à Laravel 
Laravel est un Framework web Open-Source écrit en PHP. Il est basé sur le modèle-vue-contrôleur ([MVC](https://fr.wikipedia.org/wiki/Mod%C3%A8le-vue-contr%C3%B4leur)) et est développé en [POO](https://fr.wikipedia.org/wiki/Programmation_orient%C3%A9e_objet).

C'est Taylor Otwell qui l'a écrit en juin 2011: Laravel a fêté ses 10 ans !

30% de son code est basé sur [Symfony](http://www.google.be): Symfony component.

Il connait une grande popularité. Une grande communauté d'utilisateurs du Framework s'est formée. En 2016, c'était le projet PHP le mieux noté sur GitHub.

Les principales fonctionnalités de Laravel sont:
- Le routage de requête.
- Le mapping objet-relationnel (un système baptisé Eloquent implémentant Active Record).
- L'authentification.
- Les vues (avec Blade).
- La migration de base de données.
- La gestion des exceptions.
- Les tests unitaires.

## 2. Qu'est-ce qu'un Framework ?

## 3. Installation
Il faut avoir PHP installé sur votre machine. Ce qui est normalement le cas vu que vous utilisez xampp ou mamp.
Il est possible d'installer Laravel de différentes manières via : [Docker](https://fr.wikipedia.org/wiki/Docker_(logiciel)), [Composer](https://getcomposer.org/Composer-Setup.exe) ou [Laravel Installer](https://laravel.com/docs/8.x/installation#the-laravel-installer).
Dans un soucis de facilité, nous allons utiliser Composer pour installer Laravel.
### 3.1 Installation via Composer
Avant tout il va falloir installer Composer sur votre machine.
Composer est un installer de bibliothèques PHP. Il est très facile à utiliser et permettra d'ajouter aisément des bibliothèques à vos projets PHP.

### 3.1.1 Windows
Il faudra en premier installer Composer via un setup.
1. Allez à l'url suivante: [https://getcomposer.org/Composer-Setup.exe](https://getcomposer.org/Composer-Setup.exe).
2. Attendez la fin du téléchargement.
3. Exécutez le programme téléchargé: Composer-Setup.exe
4. Cliquez sur "Install for all users (recommanded)"
5. Cliquez Sur "Oui" à la question:"Voulez-vous autoriser cette application à apporter des modifications à votre appareil ?"
6. Installation Options: Cliquez sur "Next"
7. Ici, vous devez indiquer où se trouve le fichier php.exe sur votre machine. Exemple: c:\xampp\php\php.exe Si vous avez des difficultés, je passerai vous aider. :)
8. Cochez la case "Add this PHP to your path ?"
9. Appuyez sur Next.
10. Si votre fichier php.ini est manquant, composer va en créer un pour vous. Appuyez sur Next.
11. Appuyez sur Next.
12. Appuyez sur Install.
13. Appuyez sur Next.
14. Appuyez sur Finish.

Ensuite on va configurer git dans le cas où vous utiliseriez l'installeur Laravel pour créer un dépôt git.
```bash
git config --global core.autocrlf true
```
Que fait cette commande git ?
Si vous programmez vous-même sous Windows ou si vous utilisez un autre système d’exploitation mais devez travailler avec des personnes travaillant sous Windows, vous rencontrerez à un moment ou à un autre des problèmes de caractères de fin de ligne. Ceci est dû au fait que Windows utilise pour marquer les fins de ligne dans ses fichiers un caractère « retour chariot » (carriage return, CR) suivi d’un caractère « saut de ligne » (line feed, LF), tandis que macOS et Linux utilisent seulement le caractère « saut de ligne ». C’est un cas subtil mais incroyablement ennuyeux de problème généré par la collaboration inter plate-forme.

Git peut gérer ce cas en convertissant automatiquement les fins de ligne CRLF en LF lorsque vous validez, et inversement lorsqu’il extrait des fichiers sur votre système. Vous pouvez activer cette fonctionnalité au moyen du paramètre core.autocrlf. Si vous avez une machine Windows, positionnez-le à true. Git convertira les fins de ligne de LF en CRLF lorsque vous extrairez votre code

### 3.1.2 Linux, Unix et macOS 
Pour les distributions Linux basées sur Debian, tapez la commande suivante pour installer certaines dépendances nécessaires:
```bash
sudo apt install openssl php-common php-curl php-json php-mbstring php-mysql php-xml php-zip
```

Les commandes suivantes sont à taper en ligne de commandes et on suppose que php est déjà installé.
```bash
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```
Ces commandes feront les actions suivantes:
- Télécharge l'installeur dans le répertoire courant.
- Vérifie le SHA-384 de l'installeur. (Attention que le SHA-384 pourrait changer dans les semaines à venir. Je l'ai mis en dur pour l'installation de composer. A vous d'aller vérifier si vous recevez le message "Installer corrupt").
- Exécute l'installeur. 
- Supprime l'installeur.
- Installe globalement composer: déplacement du fichier composer.phar dans le répertoire /usr/local/bin/

### 3.2 Installation via l'installeur Laravel
Ici, il faut avoir au préalable installé Composer.
Ensuite, on va installer l'installeur Laravel globalement via composer:
```bash
composer global require laravel/installer
```


