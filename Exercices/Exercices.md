[:arrow_left:Revenir au menu général.](../README.md)
<h1> Exercices Laravel</h1>

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

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
  - [Exercice n°4 - Avec Bootstrap](#exercice-n4---avec-bootstrap)
- [IV. Blade](#iv-blade)
  - [Exercice n°1](#exercice-n1)
  - [Exercice n°2](#exercice-n2)
  - [Exercice n°3](#exercice-n3)
  - [Exercice n°4](#exercice-n4)
  - [Exercice n°5](#exercice-n5)
  - [Exercice n°6](#exercice-n6)
  - [Exercice n°7](#exercice-n7)
  - [Exercice n°8](#exercice-n8)
- [V. Les contrôleurs](#v-les-contrôleurs)
  - [Exercice 1 : Calculatrice en ligne](#exercice-1--calculatrice-en-ligne)
    - [a. Fonctionnalités attendues](#a-fonctionnalités-attendues)
    - [b. Contraintes](#b-contraintes)
    - [c. Nous aurions pu avoir un showCalculator](#c-nous-aurions-pu-avoir-un-showcalculator)
  - [Exercice 2: Création d'un système de recherche d'utilisateurs](#exercice-2-création-dun-système-de-recherche-dutilisateurs)
    - [a. Fonctionnalités attendues](#a-fonctionnalités-attendues-1)
    - [b. Contraintes](#b-contraintes-1)
    - [c. Données à utiliser](#c-données-à-utiliser)
    - [d. Méthodes à utiliser dans le contrôleur PersonController](#d-méthodes-à-utiliser-dans-le-contrôleur-personcontroller)
    - [e. Vues à utiliser](#e-vues-à-utiliser)
    - [f. Conseils](#f-conseils)
- [VI. Les bases de données](#vi-les-bases-de-données)
  - [Exercice n°1](#exercice-n1-1)
  - [Exercice n°2](#exercice-n2-1)
  - [Exercice n°3](#exercice-n3-1)
  - [Exercice n°4](#exercice-n4-1)
  - [Exercice n°5](#exercice-n5-1)

<!-- /code_chunk_output -->




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
Cette vue sera nommée vue1.blade.php et sera appelée par la route '/vue1'

## Exercice n°2 - Avec un paramètre
Créez la vue l'exercice n°3 du point II (Routage).
Cette vue sera nommée vue2.blade.php. C'est dans cette vue que vous afficherez le paramètre que vous aurez reçu par votre route.

## Exercice n°3 - Avec plusieurs paramètres
Créez la vue l'exercice n°4 du point II (Routage).
Cette vue sera nommée vue3.blade.php. C'est dans cette vue que vous afficherez les paramètres que vous aurez reçu par votre route.

## Exercice n°4 - Avec Bootstrap
Créez une vue qui intègrera Bootstrap. Vous pouvez utiliser le CDN de Bootstrap pour cela. Vous afficherez un titre1 avec le texte suivant: "Bienvenue sur notre site user". Où user est le nom de l'utilisateur que vous aurez reçu par votre route.

La route sera '/user/welcome/{name}' et pointera vers la vue 'userwelcome.blade.php'

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
    let body = document.getElementsByTagName("body")[0];
    document.removeEventListener("keydown", keydown);
    let x = 10;
    let intervalID = setInterval(function() {
        body.innerHTML += `<strong>Cette page va s'effacer dans ${x}.</strong><br/>`;
        if (x === 0) {
            body.innerHTML = "";
            window.clearInterval(intervalID);
        }
        x--;
    }, 1000);
}
```

## Exercice n°8
Créez une vue nommée bladeExercice8.blade.php et un composant nommé App. Pour créer ce composant, vous utiliserez la commande artisan suivante:
```bash
php artisan make:component App
```
Ce composant se trouve dans le répertoire re

Dans ce modèle, vous allez ajouter une page complète avec Bootstrap.
Vous allez y ajouter une entrée pour les champs suivants:
- title (obligatoire)
- css (optionnel)
- script (optionnel)
- content (obligatoire)
- footer (optionnel)

# V. Les contrôleurs
## Exercice 1 : Calculatrice en ligne

Vous devez créer une calculatrice en ligne en utilisant le framework Laravel. La calculatrice doit permettre à l'utilisateur d'effectuer des opérations de base (addition, soustraction, multiplication, division) sur deux nombres.

### a. Fonctionnalités attendues

* Une page d'accueil qui affiche le formulaire de calculatrice (Route : `Route::view('calculator', 'calculator');`
* Un formulaire qui permet à l'utilisateur de saisir deux nombres et de choisir l'opération à effectuer (addition, soustraction, multiplication, division)
* Un `<select>` pour choisir entre différentes options `<option>` à effectuer: addition, soustraction, multiplication, division par défaut addition.
<!--Pour rappel:
    ```html
    <select name="operation">
        <option value="addition" selected>Addition</option>
        <option value="subtraction">Soustraction</option>
        <option value="multiplication">Multiplication</option>
        <option value="division">Division</option>
    </select>
    ```-->
* Un bouton de soumission qui enverra les données du formulaire à une route 'calculate' via le protocole post et appelera la méthode calculate de CalculatorController.
* Un contrôleur `CalculatorController` qui contiendra une méthode `calculate` pour effectuer le calcul. Cette méthode prendra en paramètre une instance de `Request` et renverra (return) la vue `result` avec le résultat de l'opération de calcul. Exemple de signature: `public function calculate(Request $request): View`
* Ajoutez un use /illuminate/View/View; pour pouvoir utiliser la classe View dans votre contrôleur.
* Une vue des résultats nommée `result` qui affichera le résultat de l'opération de calcul. Elle affichera par exemple: `Le résultat de l'opération est : 5`. Cette vue sera appelée par la méthode du contrôleur `calculate`.

### b. Contraintes

* Vous devez utiliser les routes, les contrôleurs, les vues et les modèles de Laravel pour implémenter la calculatrice
* Vous devez utiliser les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs: vous ajouterez la directive `@csrf` dans le formulaire de calcul juste après la balise `<form>`.
* Vous devez utiliser des vues Blade pour afficher les données aux utilisateurs
* votre formulaire commencera par `<form method="POST" action="{{ url('calculate') }}">`
* Attention à la division par zéro: affichez le message à la place du résultat `Division par zéro impossible` si l'utilisateur essaie de diviser par zéro.

### c. Nous aurions pu avoir un showCalculator
Nous aurions pu faire une méthode `showCalculator` dans le contrôleur `CalculatorController` mais cela n'est pas nécessaire car notre formulaire n'a aucun traitement particulier.

Méthode `showCalculator` dans le contrôleur `CalculatorController`:
```php
    public function showCalculator()
    {
        return view('calculator');
    }
```
Dans le fichier `web.php`, vous aurez la route suivante:
```php
Route::view('calculator', [CalculatorController::class, 'showCalculator']);
```


## Exercice 2: Création d'un système de recherche d'utilisateurs

Vous devez créer un système de recherche d'utilisateurs en utilisant le framework Laravel. Le système doit permettre à l'utilisateur de rechercher des utilisateurs par nom, prénom ou nom et prénom.

### a. Fonctionnalités attendues

* Une page d'accueil qui affiche la liste de tous les utilisateurs (Route : `Route::get('users', [PersonController::class, 'index'])`)
* Une page de recherche qui permet à l'utilisateur de choisir le mode de recherche via un la balise `<select>` avec les options suivantes:
    - nom
    - prénom
    - nom ou prénom
* Et de saisir le critère de recherche (Route : `Route::get('users/search', function () { ... })`)
* Le formulaire de recherche appellera la route `Route::post('users/search', [PersonController::class, 'search'])`
* Une page de résultats qui affiche la liste des utilisateurs correspondant au critère de recherche
    * `Route::get('users/name/{name}', [PersonController::class, 'showUsersByName'])`
    * `Route::get('users/firstname/{firstname}', [PersonController::class, 'showUsersByFirstname'])`
    * `Route::get('users/name-or-firstname/{criteria}', [PersonController::class, 'showUsersByNameOrFirstname'])`

### b. Contraintes

* Vous devez utiliser les routes, les contrôleurs, les vues et les modèles de Laravel pour implémenter le système de recherche
* Vous devez utiliser les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs: vous ajouterez la directive `@csrf` dans le formulaire de recherche juste après la balise `<form>`.
* Vous devez utiliser des vues Blade pour afficher les données aux utilisateurs

### c. Données à utiliser

* Un tableau d'utilisateurs privé dans la classe `PersonController` :
```php
private array $users = [
    ["id" => 1, "name" => "Piette", "firstname" => "Johnny"],
    ["id" => 2, "name" => "Piette", "firstname" => "Gabriel"],
    ["id" => 3, "name" => "Dupont", "firstname" => "Philip"],
    ["id" => 4, "name" => "Colin", "firstname" => "Stéphane"],
    ["id" => 5, "name" => "Jacques", "firstname" => "Véronique"],
    ["id" => 6, "name" => "Larock", "firstname" => "Jacques"]
];
```
Vous pourrez y accéder dans vos méthodes via `$this->users`.

### d. Méthodes à utiliser dans le contrôleur PersonController

* `searchUsersByCriteria` (méthode privée)
Voici l'implémentation de la méthode `searchUsersByCriteria` :
```php
    private function searchUsersByCriteria($field, $search): array
    {
        $search = strtolower($search);
        $persons = [];

        foreach ($this->users as $user) {
            $firstname = strtolower($user['firstname']);
            $name = strtolower($user['name']);
            switch ($field) {
                case 'name':
                    if (Str::startsWith($name, $search)) {
                        $persons[] = $user;
                    }       
                    break;    
                case 'firstname':
                    if (Str::startsWith($firstname, $search)) {
                        $persons[] = $user;
                    }
                    break;
                case 'criteria':
                    if (Str::startsWith($name, $search) || Str::startsWith($firstname, $search)) {
                        $persons[] = $user;
                    }
                    break;
                default:
                    break;
            }
        }
        return $persons;
    }
```
* `startsWith`: 
    - Dans Laravel, vous pouvez utiliser la méthode `Str::startsWith` pour déterminer si une chaîne commence par une autre chaîne. Pour pouvoir utiliser cette méthode, vous devez ajouter le namespace `use Illuminate\Support\Str;` en haut de votre fichier de contrôleur. Cette méthode détermine si `$str` commence par `$prefix`. Elle renvoie `true` si la chaîne `$str` commence par la chaîne `$prefix` et `false` sinon. Attention, cette méthode est sensible à la casse. Donc si vous voulez ignorer la casse, vous pouvez utiliser la méthode `Str::startsWith(strtolower($str), strtolower($prefix))`.
    - Plus d'informations sur [Str::startsWith](https://laravel.com/docs/11.x/strings#method-starts-with)
* `index`: appelle la vue `users.index` pour afficher la liste de tous les utilisateurs
* `showUsersByName`: appelle la vue `users.result` pour afficher la liste des utilisateurs correspondant au nom
* `showUsersByFirstname`: appelle la vue `users.result` pour afficher la liste des utilisateurs correspondant au prénom
* `showUsersByNameOrFirstname`: appelle la vue `users.result` pour afficher la liste des utilisateurs correspondant au nom ou au prénom
* `search`: appelle la vue `users.result` pour afficher la liste des utilisateurs correspondant au critère de recherche.

> **Attention** :
> Vous devez utiliser la méthode `searchUsersByCriteria` dans les méthodes `showUsersByName`, `showUsersByFirstname`, `showUsersByNameOrFirstname` et `search` pour récupérer les utilisateurs correspondant au critère de recherche.
>
> Ensuite, vous passerez ces utilisateurs ($persons) à la vue `users.result` pour les afficher.
>
> Pour vous aider, les méthodes `showUsersByName`, `showUsersByFirstname`, `showUsersByNameOrFirstname` n'auront que deux lignes de code: un tableau `$persons` qui contiendra les utilisateurs correspondant au critère de recherche (cad reçu par la méthode de recherche `searchUsersByCriteria`) et un appel à la vue `users.result` pour afficher les utilisateurs.
>
> L'intérêt de cette méthode est de factoriser le code et de ne pas répéter le code de recherche dans chaque méthode du contrôleur.

### e. Vues à utiliser
* `users.index`: affiche la liste de tous les utilisateurs
* `users.search`: affiche le formulaire de recherche
* `users.result`: affiche la liste des utilisateurs correspondant au critère de recherche

### f. Conseils
* Assurez-vous de bien organiser vos fichiers et vos classes pour que le système de recherche fonctionne correctement.
* Utilisez les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs.
* Pour déterminer le mode de recherche, vous pouvez utiliser un champ de formulaire de type `select` pour stocker le mode de recherche (par exemple, "name", "firstname" ou "criteria"). Vous pouvez ensuite utiliser ce champ pour déterminer la méthode à appeler dans votre contrôleur.

<!--
**Exemple de code HTML pour le formulaire de recherche**
```html
<form method="POST" action="{{ route('users.search') }}">
    @csrf
    <select name="mode">
        <option value="name">Nom</option>
        <option value="firstname">Prénom</option>
        <option value="criteria">Nom ou prénom</option>
    </select>
    <input type="text" name="search" required>
    <button type="submit">Rechercher</button>
</form>
```
-->

<!-- ## Exercice n°1
En suivant la théorie sur les contrôleurs, créez le contrôleur PersonController qui y est présenté.

Dans ce contrôleur, vous allez créer un champ privé pour accéder 
 tableau de personnes:
```php
    private array $users = [
        ["name" => "Piette", "firstname" => "Johnny"],
        ["name" => "Piette", "firstname" => "Gabriel"],
        ["name" => "Dupont", "firstname" => "Philip"],
        ["name" => "Colin", "firstname" => "Stéphane"],
        ["name" => "Jacques", "firstname" => "Véronique"],
        ["name" => "Larock", "firstname" => "Jacques"]
    ];
```
Ce tableau simule une base de données.

Vous allez créer une vue nommée `results` qui affichera les résultats. Elle recevra un tableau de personnes en paramètre. Ce tableau sera le résultat d'une recherche sur le tableau inital de personnes.

Ce contrôleur aura donc 4 méthodes:
- `index`: qui retournera le tableau de personnes en paramètre à la la vue 'results'.
- `showByName`: qui retournera un tableau de personnes ayant le nom passé en paramètre à la vue 'results'.
- `showByFirstname`: qui retournera un tableau de personnes ayant le prénom passé en paramètre à la vue 'results'.
- `showByCriteria`: qui retournera un tableau de personnes ayant le critère passé en paramètre à la vue 'results'. J'entends par critère le nom et/ou le prénom.

> Pour réaliser ces méthodes, vous pouvez utiliser une boucle foreach ou for pour parcourir le tableau de personnes et voir si ce que vous avez reçu en paramètre correspond à ce que vous avez dans le tableau. Si oui, vous ajoutez cette personne dans un tableau temporaire qui sera envoyé à la vue 'results'.
> Si vous avez le temps, vous pouvez utiliser la méthode array_filter mais qui est plus complexe.

Il y aura 4 routes:
- `users/` qui appellera la méthode `index` du contrôleur PersonController.
- `users/by-name/{name}`  qui appellera la méthode `showByName` du contrôleur PersonController.
- `users/by-firstname/{firstname}` qui appellera la méthode `showByFirstname` du contrôleur PersonController.
- `users/by-criteria/{criteria}` qui appellera la méthode `showByCriteria` du contrôleur PersonController.

## Exercice n°2
Dans web.php, ajoutez une route 'search' qui appelera la vue search

Vous allez créer un formulaire avec trois champs:
- le nom
- le prénom
- un critère



Dans cette vue search, vous allez mettre comme attributs à la balise
form:
- action="{{ url('users/by-criteria/') }}"
- method="POST">

Vous ajouterez dans le formulaire la directive blade: @csrf  qui permet de protéger votre formulaire des attaques CSRF (= Cross-Site Request Forgery: attaque qui consiste à forger une requête HTTP pour qu'elle semble provenir d'un utilisateur légitime): Nous verons plus tard les formulaires.
Comme vous le voyez, on a demandé d'appeler la route 'users' dans l'attribut action et on a demandé la méthode 'POST'.

Il faut donc ajouter une route qui va tenir compte de cela:
```php
Route::post('users', [PersonController::class, 'search']);
``` 
Le 'search' indique que l'on aura dans notre PersonController la méthode search:
```php
  public function search(Request $request)
  {
      $array = array();
      $name = $request->input('name');
      $firstname = $request->input('firstname');

      #On recherche sur le nom ET prénom
      if ($name && $firstname) {
          foreach ($this->users as $user) {
              $userObj = (object)$user;
              if (strtolower($userObj->name) === strtolower($name) && strtolower($userObj->firstname) === strtolower($firstname)) {
                  array_push($array, $user);
              }
          }
      } elseif ($firstname) {
           return $this->getUsersByFirstname($firstname);
          }
          #On recherche sur le nom
          elseif ($name) {
              return $this->showByName($name);
          }
          else {
              return view
      }
      return view('results', ['users' => $array]);        
  }
```

Dans cette méthode, on récupère les valeurs des champs name et firstname. On vérifie si les deux champs sont remplis. Si c'est le cas, on recherche les utilisateurs ayant le nom et le prénom correspondant. Si un seul des deux champs est rempli, on recherche sur le nom ou le prénom. Si aucun des deux champs n'est rempli, on affiche tous les utilisateurs. -->


# VI. Les bases de données
Pour faire cette partie, n'oubliez pas que vous avez la théorie sur les [bases de données](../Theo/14.%20Les%20base%20de%20données.md) pour vous aider.
## Exercice n°1
- Créez un nouveau projet Laravel nommé dbexercices avec l'option --git
- Modifiez le fichier .env pour la partie base de données comme vu en théorie. Cette partie vous est propre et peut ne pas être la même que votre comparse de cours: login/password.
- Connectez-vous à Mysql en ligne de commandes et créez la base de données dbexercices.

## Exercice n°2
- Créez une migration nommée `create_products_table`
- Dans la fonction `up()` de cette migration laissez `id()` et `timespams()` et ajoutez les champs suivants:
  - name de type `string` qui doit être `unique`.
  - price de type `decimal`.
  - stock de type `integer`.
  - discontinued de type `boolean` ayant une `valeur par défaut` à `false`.
- Créez un `modèle` nommée `Product`.

## Exercice n°3
- Créez une route 'products/list' qui appelera le contrôleur ProductController et sa méthode index().
- Ce contrôleur, que vous allez créer, enverra en paramètre tous les produits à la vue nommée list.blade.php qui se trouvera dans le répertoire views/products.
- Lors de l'envoie des paramètres à la vue, nommez la variable de destination 'products'.
- Vous ajouterez 2 produits via tinker avec les données suivantes:
    - name: 'Téléphone', price: 500, stock: 10
    - name: 'Tablette', price: 800, stock: 5
- Cette vue affichera, tous les attributs d'un produit.
- Affichez un message s'il n'y a pas de produits.

Exemples de return de la function index:
- return view('products.list')->with('products',$produits);
- return view('products.list', ['products'=>$produits]);

A vous de trouver comment affecter $produits avec tous les produits de la DB. ;) 

## Exercice n°4
Ici nous allons créer des produits par défaut si ceux-ci n'existent pas. Ce n'est pas la meilleure méthode, c'est juste pour l'exercice que nous le feront de cette manière.

- Supprimez toutes les données de la db via la commande 
```bash
php artisan migrate:fresh
```
- Créez une route 'products/initialize'.
- Cette route appelera le contrôleur ProductController et sa méthode initialize().
- Dans cette méthode vous ajouterez 2 produits en DB uniquement s'il n'y a pas de produits dans la table produits.
- Cette méthode initialize de votre controlleur appelera la vue 'initialize.blade.php' qui se trouve dans le répertoire views/products de cette manière: return view('products/initialize','exists'=>\$existe,'products'=>\$produits);  A vous de remplir \$existe et \$produits de la manière adéquate. ;) Gros indice soit vous utilisez `Product::count()` qui retourne le nombre de produits en DB, soit vous utilisez `Product::exists()` qui retourne un booléen si des produits existent en DB. Et et donc vous affectez \$existe et \$produits en conséquence.
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
_[Eqla](http://www.eqla.be) 2024 - Formation Laravel_