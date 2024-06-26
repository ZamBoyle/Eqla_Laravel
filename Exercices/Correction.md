[:arrow_left:Revenir au menu général.](../README.md)
<h1> Correction des Exercices Laravel</h1>

- [I. Création d'un projet](#i-création-dun-projet)
  - [Exercice n°1 - Avec composer](#exercice-n1---avec-composer)
    - [Solution](#solution)
  - [Exercice n°2 - Avec Laravel Installer](#exercice-n2---avec-laravel-installer)
    - [Solution](#solution-1)
  - [Exercice n°3 - Exécuter l'application Laravel](#exercice-n3---exécuter-lapplication-laravel)
    - [Solution](#solution-2)
  - [Exercice n°4 - Projets Exercices](#exercice-n4---projets-exercices)
    - [Solution](#solution-3)
- [II. Routage](#ii-routage)
  - [Exercice n°1  - Sur une chaîne](#exercice-n1----sur-une-chaîne)
    - [Solution](#solution-4)
  - [Exercice n°2 - Sur une vue](#exercice-n2---sur-une-vue)
    - [Solution 1](#solution-1)
    - [Solution 2](#solution-2)
  - [Exercice n°3 - Avec un paramètre](#exercice-n3---avec-un-paramètre)
    - [Solution](#solution-5)
  - [Exercice n°4 - Avec plusieurs paramètres](#exercice-n4---avec-plusieurs-paramètres)
    - [Solution](#solution-6)
  - [Exercice n°5 - Avec contrainte](#exercice-n5---avec-contrainte)
    - [Solution](#solution-7)
  - [Exercice n°6 - Affichage des routes](#exercice-n6---affichage-des-routes)
  - [Exercice n°7 - sur une vue avec plusieurs paramètres](#exercice-n7---sur-une-vue-avec-plusieurs-paramètres)
    - [Solution 1](#solution-1-1)
    - [Solution 2](#solution-2-1)
- [III. Les vues](#iii-les-vues)
  - [Exercice n°1 - Simple](#exercice-n1---simple)
    - [Solution: fichier Hello.blade.php](#solution-fichier-hellobladephp)
  - [Exercice n°2 - Avec un paramètre](#exercice-n2---avec-un-paramètre)
    - [Solution: fichier web.php](#solution-fichier-webphp)
    - [Solution: fichier Hello.blade.php](#solution-fichier-hellobladephp-1)
  - [Exercice n°3 - Avec plusieurs paramètres](#exercice-n3---avec-plusieurs-paramètres)
    - [Solution: web.php](#solution-webphp)
    - [Solution: fichier Hello.blade.php](#solution-fichier-hellobladephp-2)
- [IV. Blade](#iv-blade)
  - [Exercice n°1](#exercice-n1)
    - [Solution: fichier bladeExercice1.blade.php](#solution-fichier-bladeexercice1bladephp)
- [V. Les réponses](#v-les-réponses)
- [VI. Les contrôleurs](#vi-les-contrôleurs)


# I. Création d'un projet
## Exercice n°1 - Avec composer
Créez un projet Laravel avec Composer ayant pour nom LaravelEx1.
### Solution
```console
composer create-project laravel/laravel LaravelEx1
```

## Exercice n°2 - Avec Laravel Installer
Créez un projet Laravel avec l'installeur Laravel ayant pour nom LaravelEx2.
### Solution
```console
laravel new LaravelEx2
```

## Exercice n°3 - Exécuter l'application Laravel
Allez dans le répertoire LaravelEx2 et exécutez cette application Laravel.
### Solution
```console
cd LaravelEx2
php artisan serve
```

## Exercice n°4 - Projets Exercices
Créez un projet qui s'intitule ExercicesLaravel. Vous effectuerez ensuite tous les exercices dans ce projet.

### Solution
```console
laravel new LaravelExercices
```

# II. Routage
## Exercice n°1  - Sur une chaîne
Affichez la string "Bienvue toto" quand un utilisateur essaie d'accéder "/toto" 
### Solution
Dans le fichier web.php
```php
Route::get('/toto', function(){
  return "Bienvenue toto";
});
```

## Exercice n°2 - Sur une vue
Créez une vue qui s'appellera 'Games'. Celle-ci sera appelée quand un utilisateur essaie d'accéder à "/jeux";
La page affichera en titre 1: Bienvenue sur la page des jeux vidéos.

### Solution 1
```php
Route::get('/jeux', function(){
  return view('Games');
});
```
### Solution 2
Ou bien la version raccourcie:
```php
Route::view('/jeux','Games');
```

## Exercice n°3 - Avec un paramètre
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une chaîne quand on envoie un paramètre.
La chaîne affichera par exemple: Hello Johnny !

### Solution
```php
Route::get('/Hello/{user}', function($user){
  return "Hello $user !";
});
```

## Exercice n°4 - Avec plusieurs paramètres
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une chaîne quand on envoie deux paramètre.
La chaîne affichera par exemple: Ton prénom est 'Johnny' et ton nom est 'Piette'.

### Solution
```php
Route::get('/Hello/{firstname}/{name}', function($firstname, $name){
  return "Ton prénom est '$firstname' et ton nom est '$name'.";
});
```

## Exercice n°5 - Avec contrainte
Pour la route '/Hello', adaptez celle-ci pour qu'elle retourne une vue quand on envoie uniquement des lettres en paramètre.
La vue affichera: Bienvenue Johnny !

### Solution
```php
Route::get('/Hello/{firstname}/', function($firstname){
  return "Hello $firstname !";
})->whereAlpha('firstname');
```

## Exercice n°6 - Affichage des routes
A l'aide de la commande php afficher l'ensemble de vos routes.
```console
php artisan route:list
```

## Exercice n°7 - sur une vue avec plusieurs paramètres
Tout comme pour l'exercice 4, passez ces paramètres à une vue via deux manières: un tableau et avec ->with

### Solution 1
```php
Route::get('/Hello/{firstname}/{name}', function($firstname, $name){
  return view('hello',['firstname'=>$firstname, 'name'=>$name]);
});
```
### Solution 2
```php
Route::get('/Hello/{firstname}/{name}', function($firstname, $name){
  return view('hello')->with('firstname',$firstname)->with('name',$name);
});
```

# III. Les vues
## Exercice n°1 - Simple
Créez une vue qui affiche en titre1 Welcome !
### Solution: fichier Hello.blade.php
```php
<h1> Welcome ! </h1>
```

## Exercice n°2 - Avec un paramètre
Créez la vue l'exercice n°3 du point II (Routage).

### Solution: fichier web.php
```php
Route::get('/Hello/{user}',function($user){
  return view('Hello')->with('user',$user);
});
```
### Solution: fichier Hello.blade.php
```php
<h1> Welcome {{ $user }} ! </h1>
```

## Exercice n°3 - Avec plusieurs paramètres
Créez la vue l'exercice n°4 du point II (Routage).

### Solution: web.php
```php
Route::get('/Hello/{firstname}/{name}', function($firstname, $name){
  return view('hello',['firstname' => $firstname, 'name' =>$name]);
});
```
### Solution: fichier Hello.blade.php
```php
Ton prénom est '{{ $firstname }}' et ton nom est '{{ $name }}'.
```

# IV. Blade

## Exercice n°1
Créez une vue nommée bladeExercice1.blade.php dans laquelle vous allez affichez le contenu de la variable $_SERVER['SCRIPT_FILENAME']. 

### Solution: fichier bladeExercice1.blade.php
```php
Le contenu de la variable $_SERVER['SCRIPT_FILENAME'] est {{ $_SERVER['SCRIPT_FILENAME'] }}.
```

## Exercice n°2
Créez une vue nommée bladeExercice2.blade.php qui recevra le paramètre \$firstname.
Vous afficherez le paramètre \$firstname de la manière suivante
- Si \$firstname est égal à votre nom alors affichez 'Bonjour Maître !'
- Sinon affichez par exemple 'Bonjour Bruno !' (Bruno étant le contenu de la variable \$firstname)

### Solution: bladeExercice2.blade.php
```php
@if ($firstname == 'Johnny')
Bonjour Maître !
@else
Bonjour {{ $firstname }} !
@endif
```
## Exercice n°3
Créez une vue nommée bladeExercice3.blade.php qui recevra le paramètre \$age.
Vous utiliserez le paramètre \$age de la manière suivante:
- Si \$age est supérieur ou égal à 65, vous afficherez 'Bienvenue cher Senior.'
- Sinon si \$age est compris entre 18 et 64, vous afficherez 'Bienvenue sur le site.'
- Sinon vous afficherez 'Désolé, il faut être majeur pour entrer sur ce site.'

### Solution: bladeExercice3.blade.php
```php
@if ($age >= 65)
Bienvenue cher Senior.
@elseif ($age >= 18 && $age <=64)
Bienvenue sur ce site.
@else
Désolé, il faut être majeur pour entrer sur ce site.
@endif
```

## Exercice n°4
Créez une vue nommée bladeExercice4.blade.php qui recevra un tableau d'objets de personnes depuis la route '/people'.
### Solution: web.php
```php
use App\Models\Person;
Route::get('/people', function(){
  $people = array(
  new Person("Johnny","Piette",47),
  new Person("Philip","Dupont",25),
  new Person("Bruno","Defalque",77)
);
  return view('bladeExercice4')->with('people',$people);
});
```

### Solution: bladeExercice4.blade.php

```php
<h1>Liste de personnes</h1>
@foreach ($people as $person)
    - Prénom: {{ $person->Firstname }} <br/>
    - Nom: {{ $person->Name }} <br/>
    - Age: {{ $person->Age }} <br/>
    <hr/>
@endforeach
```
On aurait pu utiliser @forelse pour gérer le cas d'un tableau de personnes vide. Ca sera l'objectif de l'exercice suivant.

## Exercice n°5
Créez une vue nommée _bladeExercice5.blade.php_ qui fera la même chose que l'exercice précédent sauf que vous prendrez en compte le fait qu'un tableau peut être vide. Vous utiliserez _forelse_ pour cela. Si le tableau est vide, vous afficherez le message suivant: "Personne n'est là. Je me sens bien seul"

### Solution: bladeExercice5.blade.php
```php
<h1>Liste de personnes</h1>
@forelse ($people as $person)
    - Prénom: {{ $person->Firstname }} <br/>
    - Nom: {{ $person->Name }} <br/>
    - Age: {{ $person->Age }} <br/>
    <hr/>
@empty
Personne n'est là. Je me sens bien seul.
@endforelse
```

[:arrow_left:Revenir au menu général.](../README.md)

--- 
_[Eqla](http://www.eqla.be) 2024 - Formation Laravel_