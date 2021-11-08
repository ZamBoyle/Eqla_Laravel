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
- [V. Les contrôleurs](#v-les-contrôleurs)
  - [Exercice n°1](#exercice-n1-1)
  - [Exercice n°2](#exercice-n2-1)
- [VI. Les bases de données](#vi-les-bases-de-données)
  - [Exercice n°1](#exercice-n1-2)
  - [Exercice n°2](#exercice-n2-2)
  - [Exercice n°3](#exercice-n3-1)
  - [Exercice n°4](#exercice-n4-1)
  - [Exercice n°5](#exercice-n5-1)


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
Ce modèle permettra de remplacer depuis la vue appelante:
- le titre de la page dans la balise head.
- le titre1.
- le contenu.

La vue s'appelera Exercice6View.blade.php

## Exercice n°7
Modifiez votre modèle pour que celui-ci permette d'ajouter éventuellement un script JS.
La vue s'appelera Exercice7View.blade.php
Cette vue aura comme:
- titre de page: Kaboum.
- titre1: Cette page est explosive.
- contenu: Veuillez presser une touche pour lancer le compte à rebours pour effacer cette page.
- un script JS qui contiendra le code suivant:
```javascript
window.addEventListener('load', (event) => {
    document.addEventListener("keydown", keydown);
});

function keydown() {
    var body = document.getElementsByTagName("body")[0];
    document.removeEventListener("keydown", keydown);
    var x = 10;
    var intervalID = setInterval(function() {
        body.innerHTML += `<strong>Cette page va s'effacer dans ${x}.</strong><br/>`;
        if (x == 0) {
            body.innerHTML = "";
            window.clearInterval(intervalID);
        }
        x--;
    }, 1000);
}
```

# V. Les contrôleurs
## Exercice n°1
En suivant la théorie sur les contrôleurs, créez le contrôleur PersonController qui y est présenté.
Ce contrôleur aura donc 5 méthodes:
- hi
- getUsersList
- getUsersByName
- getUsersByFirstname
- getUsersBySomething
- search

Il y aura 4 routes:
- users/List
- users/SearchByName/{name}
- users/SearchByFirstname/{firstname}
- users/SearchBySomehting/{thing}
Et pour finir, une vue nommée Results.blade.php

Il n'y a rien de compliqué, je pense, il suffit de suivre pas à pas la théorie pour faire cet exercice.

## Exercice n°2
Dans web.php, ajoutez une route 'search' qui appelera la vue search.blade.php

Vous allez créer un formulaire permettant d'entrer deux champs: le nom et le prénom. Ils auront comme name/id (name et firstname).

Dans cette vue search, vous allez mettre comme attributs à la balise
form:
- action="{{ url('users') }}"
- method="POST">

Vous ajouterez dans le formulaire la directive blade: @csrf 
Comme vous le voyez, on a demandé d'appeler la route 'users' dans Action et on a demandé la méthode 'POST'.

Il faut donc ajouter une route qui va tenir compte de cela:
```php
Route::post('users', [PersonController::class, 'searchForm']);
``` 
Le 'searchForm' indique que l'on aura dans notre PersonController la méthode searchForm:
```php
  public function searchForm(Request $request)
  {
      $array = array();
      $name = $request->input('name');
      $firstname = $request->input('firstname');

      #On recherche sur le nom ET prénom
      if (isset($name) && isset($firstname)) {
          foreach ($this->users as $user) {
              $userObj = (object)$user;
              if (strtolower($userObj->name) === strtolower($name) && strtolower($userObj->firstname) === strtolower($firstname)) {
                  array_push($array, $user);
              }
          }
      } else {
          #On recherche sur le prénom
          if (!isset($name) && isset($firstname)) {
              return $this->getUsersByFirstname($firstname);
          }
          #On recherche sur le nom
          if (isset($name) && !isset($firstname)) {
              return $this->getUsersByName($name);
          }
      }
      return view('results', ['users' => $array]);        
  }
```
# VI. Les bases de données
Pour faire cette partie, n'oubliez pas que vous avez la théorie sur les [bases de données](../Theo/14.%20Les%20base%20de%20données.md) pour vous aider.
## Exercice n°1
- Créez un nouveau projet Laravel nommé dbexercices avec l'option --git
- Modifiez le fichier .env pour la partie base de données comme vu en théorie. Cette partie vous est propre et peut ne pas être la même que votre comparse de cours: login/password.
- Connectez-vous à Mysql en ligne de commandes et créez la base de données dbexercices.

## Exercice n°2
- Créez une migration nommée create_products_table
- Dans la fonction up() de cette migration laissez id() et timespams() et ajoutez les champs suivants:
  - name de type string qui doit être unique.
  - price de type decimal.
  - stock de type integer.
  - discontinued de type boolean ayant une valeur par défaut à false.
- Créez un modèle nommée Product

## Exercice n°3
- Créez une route 'products/list' qui appelera le contrôleur ProductController et sa méthode index().
- Ce contrôleur, que vous allez créer, enverra en paramètre tous les produits à la vue nommée list.blade.php qui se trouvera dans le répertoire views/products.
- Lors de l'envoie des paramètres à la vue, nommez la variable de destination 'products'.
- Cette vue affichera, tous les attributs d'un produit.
- Affichez un message s'il n'y a pas de produits.

Exemples de return de la function index:
- return view('products/list')->with('products',$produits);
- return view('products/list', ['products'=>$produits]);

A vous de trouver comment affecter $produits avec tous les produits de la DB. ;) 

## Exercice n°4
Ici nous allons créer des produits par défaut si ceux-ci n'existent pas. Ce n'est pas la meilleure méthode, c'est juste pour l'exercice que nous le feront de cette manière.

- Créez une route 'products/initialize'.
- Cette route appelera le contrôleur ProductController et sa méthode initialize().
- Dans cette méthode vous ajouterez 2 produits en DB uniquement s'il n'y a pas de produits dans la table produits.
- Cette méthode initialize de votre controlleur appelera la vue 'initialize.blade.php' qui se trouve dans le répertoire views/products de cette manière: return view('products/initialize','exists'=>\$existe,'products'=>\$produits);  A vous de remplir \$existe et \$produits de la manière adéquate. ;) 
- Cette vue, affichera, grâce à $exists et $products, soit
  - Rien à faire, la table products n'est pas vide.
  - La table products a été initialisée avec des produits par défaut.
- A la fin de la vue, on appelera la vue list.blade.php via la commande @include('products/list'); De cette manière, qu'il y ait eu ou non initialisation de la table products, on affichera les produits.

Pour tester, exécutez php artisan migrate:fresh ce qui videra les différentes tables en DB.

Lorsque vous appelerez la route products/list, votre programme devrait  afficher "La table products a été initialisée avec des produits par défaut." et afficher les produits en DB qui viennent d'être créés.

La seconde fois que vous irez sur products/list, votre programme devrait afficher "Rien à faire, la table products n'est pas vide." et afficher les produits en DB.

## Exercice n°5
- Créez deux routes 'products/new'
  - une utilisant la méthode get et qui appelera une vue qui affichera les champs nécessaires pour encoder un nouveau produit.
  - une utilisant la méthode post et qui appelera le controller pour ajouter le produit et affichera la vue pour indiquer que le produit a été créer.
- L'envoie du formulaire utilisera la méthode POST.
- L'attribution action="{{ url('products/new')}}

[:arrow_left:Revenir au menu général.](../README.md)

--- 
_[Eqla](http://www.eqla.be) 2021 - Formation Laravel_