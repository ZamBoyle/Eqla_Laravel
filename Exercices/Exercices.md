[:arrow_left:Revenir au menu général.](../README.md)
<h1> Exercices Laravel</h1>

- [I. Création d'un projet](#i-création-dun-projet)
  - [Exercice n°1 - Avec composer](#exercice-n1---avec-composer)
  - [Exercice n°2 - Avec Laravel Installer](#exercice-n2---avec-laravel-installer)
  - [Exercice n°3 - Exécuter l'application Laravel](#exercice-n3---exécuter-lapplication-laravel)
  - [Exercice n°4 - Projets Exercices](#exercice-n4---projets-exercices)
- [II. Routage](#ii-routage)
  - [Exercice n°1  - Sur une chaîne](#exercice-n1----sur-une-chaîne)
  - [Exercice n°2 - Sur une vue](#exercice-n2---sur-une-vue)
  - [Exercice n°3 - Avec un paramètre](#exercice-n3---avec-un-paramètre)
  - [Exercice n°4 - Avec plusieurs paramètres](#exercice-n4---avec-plusieurs-paramètres)
  - [Exercice n°5 - Avec contrainte](#exercice-n5---avec-contrainte)
  - [Exercice n°6 - Affichage des routes](#exercice-n6---affichage-des-routes)
  - [Exercice n°7 - sur une vue avec plusieurs paramètres](#exercice-n7---sur-une-vue-avec-plusieurs-paramètres)
- [III. Les vues](#iii-les-vues)
  - [Exercice n°1 - Simple](#exercice-n1---simple)
  - [Exercice n°2 - Avec un paramètre](#exercice-n2---avec-un-paramètre)
  - [Exercice n°3 - Avec plusieurs paramètres](#exercice-n3---avec-plusieurs-paramètres)
- [IV. Blade](#iv-blade)
  - [Exercice n°1](#exercice-n1)
  - [Exercice n°2](#exercice-n2)
  - [Exercice n°3](#exercice-n3)
  - [Exercice n°4](#exercice-n4)
  - [Exercice n°5](#exercice-n5)
  - [Exercice n°6](#exercice-n6)
  - [Exercice n°7](#exercice-n7)


# I. Création d'un projet
## Exercice n°1 - Avec composer
Créez un projet Laravel avec Composer ayant pour nom LaravelEx1.

## Exercice n°2 - Avec Laravel Installer
Créez un projet Laravel avec l'installeur Laravel ayant pour nom LaravelEx2.

## Exercice n°3 - Exécuter l'application Laravel
Allez dans le répertoire LaravelEx2 et exécutez cette application Laravel.

## Exercice n°4 - Projets Exercices
Créez un projet qui s'intitule ExercicesLaravel. Vous effectuerez ensuite tous les exercices dans ce projet.

# II. Routage
## Exercice n°1  - Sur une chaîne
Affichez la string "Bienvue toto" quand un utilisateur essaie d'accéder "/toto" 

## Exercice n°2 - Sur une vue
Créez une vue qui s'appellera 'Games'. Celle-ci sera appelée quand un utilisateur essaie d'accéder à "/jeux";
La page affichera en titre 1: Bienvenue sur la page des jeux vidéos.

## Exercice n°3 - Avec un paramètre
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une chaîne quand on envoie un paramètre.
La chaîne affichera par exemple: Hello Johnny !

## Exercice n°4 - Avec plusieurs paramètres
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une chaîne quand on envoie deux paramètre.
La chaîne affichera par exemple: Ton prénom est 'Johnny' et ton nom est 'Piette'.

## Exercice n°5 - Avec contrainte
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une vue quand on envoie uniquement des lettres en paramètre.
La vue affichera: Bienvenue Johnny !

## Exercice n°6 - Affichage des routes
A l'aide de la commande php afficher l'ensemble de vos routes.

## Exercice n°7 - sur une vue avec plusieurs paramètres
Tout comme pour l'exercice 4, passez ces paramètres à une vue via deux manières: un tableau et avec ->with

# III. Les vues
## Exercice n°1 - Simple
Créez une vue qui affiche en titre1 Welcome !

## Exercice n°2 - Avec un paramètre
Créez la vue l'exercice n°3 du point II (Routage).

## Exercice n°3 - Avec plusieurs paramètres
Créez la vue l'exercice n°4 du point II (Routage).

# IV. Blade
Dans les exercices suivants n'utilisez jamais directement la fonction echo. Blade permet d'afficher rapidement des variables.

## Exercice n°1
Créez une vue nommée bladeExercice1.blade.php dans laquelle vous allez affichez le contenu de la variable $_SERVER['SCRIPT_FILENAME']. 

## Exercice n°2
Créez une vue nommée bladeExercice2.blade.php qui recevra le paramètre \$firstname.
Vous afficherez le paramètre \$firstname de la manière suivante
- Si \$firstname est égal à votre nom alors affichez 'Bonjour Maître !'
- Sinon affichez par exemple 'Bonjour Bruno !' (Bruno étant le contenu de la variable \$firstname)

## Exercice n°3
Créez une vue nommée bladeExercice3.blade.php qui recevra le paramètre \$age.
Vous utiliserez le paramètre \$age de la manière suivante:
- Si \$age est supérieur ou égal à 65, vous afficherez 'Bienvenue cher Senior.'
- Sinon si \$age est compris entre 18 et 64, vous afficherez 'Bienvenue sur le site.'
- Sinon vous afficherez 'Désolé, il faut être majeur pour entrer sur ce site.'

## Exercice n°4
Créez une vue nommée bladeExercice4.blade.php qui recevra un tableau d'objets de personnes depuis la route '/people'.
La classe Person aura la définition suivante:
```php
<?php

namespace App\Models;
class Person
{
  public string $Firstname;
  public string $Name;
  public int $Age;

    public function __construct(string $Firstname, string $Name, int $Age)
    {
        $this->Firstname = $Firstname;
        $this->Name = $Name;
        $this->Age = $Age;
    }
}

?>
```
Vous mettrez cette classe person.php dans le répertoire App/Models
Pour construire un tableau de personnes, vous pouvez faire par exemple ceci dans votre route 'people' qui se trouve dans le fichier web.php:
```php
$people = array(
  new Person("Johnny","Piette",47),
  new Person("Philip","Dupont",25),
  new Person("Bruno","Defalque",77)
);
```
Vous enverrez ce tableau à la vue bladeExercice4.blade.php
Dans le fichier web.php, avant la définition de vos routes, ajoutez:
```php
use App\Models\Person;
``` 
Dans la vue, c'est à dire dans le fichier bladeExercice4.blade.php:
- Vous allez parcourir le tableau via le _foreach_ de Blade.
- Sur des lignes différentes, vous afficherez le nom, le prénom et l'age de chaque personne.
- Vous mettrez un \<hr/> après chaque personne.

## Exercice n°5
Créez une vue nommée _bladeExercice5.blade.php_ qui fera la même chose que l'exercice précédent sauf que vous prendrez en compte le fait qu'un tableau peut être vide. Vous utiliserez _forelse_ pour cela. Si le tableau est vide, vous afficherez le message suivant: "Personne n'est là. Je me sens bien seul"

## Exercice n°6
Créez un modèle qui comprendra tout le code d'une page html: html, head, body, etc.
Vous appelerez ce modèle Exercice6Modele.blade.php
Ce modèle permettra de remplacer depuis la page appelante:
- le titre de la page dans la balise head.
- le titre1.
- le contenu.
La page appelante s'appelera Exercice6Page.blade.php

## Exercice n°7
Faites la même chose mais en utilisant un modèle avec composant qui s'appelera Exercice7Component.blade.php
La page appelante s'appelera Exercice7Page.blade.php



[:arrow_left:Revenir au menu général.](../README.md)

--- 
_[Eqla](http://www.eqla.be) 2021 - Formation Laravel_