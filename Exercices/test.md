**Exercice : Calculatrice en ligne**

Vous devez créer une calculatrice en ligne en utilisant le framework Laravel. La calculatrice doit permettre à l'utilisateur d'effectuer des opérations de base (addition, soustraction, multiplication, division) sur deux nombres.

**Fonctionnalités attendues**

* Une page d'accueil qui affiche le formulaire de calculatrice (Route : `Route::view('calculator', 'calculator');`
* Un formulaire qui permet à l'utilisateur de saisir deux nombres et de choisir l'opération à effectuer (addition, soustraction, multiplication, division)
* Un `<select>` pour choisir entre différentes options `<option>` à effectuer: addition, soustraction, multiplication, division par défaut addition. Pour rappel:
    ```html
    <select name="operation">
        <option value="addition" selected>Addition</option>
        <option value="subtraction">Soustraction</option>
        <option value="multiplication">Multiplication</option>
        <option value="division">Division</option>
    </select>
    ```
* Un bouton de soumission qui enverra les données du formulaire à une route de calcul (Route : `Route::post('calculate', [CalculatorController::class, 'calculate'])`)
* Un contrôleur `CalculatorController` qui contiendra une méthode `calculate` pour effectuer le calcul. Cette méthode prendra en paramètre une instance de `Request` et renverra (return) la vue `result` avec le résultat de l'opération de calcul. Exemple de signature: `public function calculate(Request $request): View`
* Ajoutez un use /illuminate/View/View; pour pouvoir utiliser la classe View dans votre contrôleur.
* Une vue des résultats nommée `result` qui affichera le résultat de l'opération de calcul. Elle affichera par exemple: `Le résultat de l'opération est : 5`. Cette vue sera appelée par la méthode du contrôleur `calculate`.

**Contraintes**

* Vous devez utiliser les routes, les contrôleurs, les vues et les modèles de Laravel pour implémenter la calculatrice
* Vous devez utiliser les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs: vous ajouterez la directive `@csrf` dans le formulaire de calcul juste après la balise `<form>`.
* Vous devez utiliser des vues Blade pour afficher les données aux utilisateurs
* votre formulaire commencera par `<form method="POST" action="{{ url('calculate') }}">`
* Attention à la division par zéro: affichez le message à la place du résultat `Division par zéro impossible` si l'utilisateur essaie de diviser par zéro.


**Exercice : Création d'un système de recherche d'utilisateurs**

Vous devez créer un système de recherche d'utilisateurs en utilisant le framework Laravel. Le système doit permettre à l'utilisateur de rechercher des utilisateurs par nom, prénom ou nom et prénom.

**Fonctionnalités attendues**

* Une page d'accueil qui affiche la liste de tous les utilisateurs (Route : `Route::get('users', [PersonController::class, 'index'])`)
* Une page de recherche qui permet à l'utilisateur de choisir le mode de recherche via un la balise `<select>` avec les options suivantes:
    - nom
    - prénom
    - nom et prénom
* Et de saisir le critère de recherche (Route : `Route::get('users/search', function () { ... })`)
* Le formulaire de recherche appellera la route `Route::post('users/search', [PersonController::class, 'search'])`
* Une page de résultats qui affiche la liste des utilisateurs correspondant au critère de recherche
    * `Route::get('users/name/{name}', [PersonController::class, 'showUsersByName'])`
    * `Route::get('users/firstname/{firstname}', [PersonController::class, 'showUsersByFirstname'])`
    * `Route::get('users/name-or-firstname/{criteria}', [PersonController::class, 'showUsersByNameOrFirstname'])`

**Contraintes**

* Vous devez utiliser les routes, les contrôleurs, les vues et les modèles de Laravel pour implémenter le système de recherche
* Vous devez utiliser les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs: vous ajouterez la directive `@csrf` dans le formulaire de recherche juste après la balise `<form>`.
* Vous devez utiliser des vues Blade pour afficher les données aux utilisateurs

**Données à utiliser**

* Un tableau d'utilisateurs privé dans la classe `PersonController` :
```
private array $users = [
    ["id" => 1, "name" => "Piette", "firstname" => "Johnny"],
    ["id" => 2, "name" => "Piette", "firstname" => "Gabriel"],
    ["id" => 3, "name" => "Dupont", "firstname" => "Philip"],
    ["id" => 4, "name" => "Colin", "firstname" => "Stéphane"],
    ["id" => 5, "name" => "Jacques", "firstname" => "Véronique"],
    ["id" => 6, "name" => "Larock", "firstname" => "Jacques"]
];
```
**Méthodes à utiliser dans le contrôleur PersonController**

* `searchUsersByCriteria` (méthode privée)
Voici l'implémentation de la méthode `searchUsersByCriteria` :
```php
    private function searchUsersByCriteria($field, $search): array
    {
        $search = strtolower($search);
        $persons = [];

        foreach ($this->users as $user) {
            switch ($field) {
                case 'name':
                    if (str_contains(strtolower($user['name']), $search) === true) { // true n'est pas obligatoire
                        $persons[] = $user;
                    }
                    break;
                case 'firstname':
                    if (str_contains(strtolower($user['firstname']), $search)) {
                        $persons[] = $user;
                    }
                    break;
                case 'criteria':
                    if (str_contains(strtolower($user['name']), $search) || str_contains(strtolower($user['firstname']), $search)) {
                        $persons[] = $user;
                    }
                    break;
            }
        }
        return $persons;
    }
```
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

**Vues à utiliser**
* `users.index`: affiche la liste de tous les utilisateurs
* `users.search`: affiche le formulaire de recherche
* `users.result`: affiche la liste des utilisateurs correspondant au critère de recherche


**Conseils**

* Assurez-vous de bien organiser vos fichiers et vos classes pour que le système de recherche fonctionne correctement.
* Utilisez les mécanismes de sécurité de Laravel pour protéger les données des utilisateurs.
* Pour déterminer le mode de recherche, vous pouvez utiliser un champ de formulaire de type `select` pour stocker le mode de recherche (par exemple, "name", "firstname" ou "criteria"). Vous pouvez ensuite utiliser ce champ pour déterminer la méthode à appeler dans votre contrôleur.

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