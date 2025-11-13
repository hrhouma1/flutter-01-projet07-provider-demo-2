# Exercice Pratique : Développer avec Provider

## Instructions

Dans cet exercice, vous allez **DÉVELOPPER** (pas seulement analyser) du code avec Provider.

**Objectif** : Créer 3 applications Flutter fonctionnelles utilisant Provider pour la gestion d'état.


# PARTIE 1 : Provider Compteur Simple 

### Énoncé

Créez une application Flutter avec un **compteur** utilisant Provider pour la gestion d'état.

**Spécifications** :

1. Créer une classe `CounterModel` qui étend `ChangeNotifier`
2. Le modèle doit contenir :
   - Une variable privée `_count` initialisée à 0
   - Un getter `count` pour accéder à la valeur
   - Une méthode `increment()` qui augmente le compteur
   - Une méthode `decrement()` qui diminue le compteur
3. Utiliser `ChangeNotifierProvider` pour fournir le modèle
4. L'interface doit afficher :
   - Le nombre actuel en grand (taille 48)
   - Un bouton "+" pour incrémenter
   - Un bouton "-" pour décrémenter
   - Les deux boutons doivent être côte à côte

**Contraintes techniques** :
- Créer le modèle dans un fichier séparé `counter_model.dart`
- Utiliser `ChangeNotifierProvider` au niveau de `MyApp`
- Utiliser `Consumer<CounterModel>` pour afficher le nombre
- Utiliser `context.read<CounterModel>()` dans les boutons
- Ne pas oublier `notifyListeners()` après chaque modification

**Interface attendue** :
```
┌─────────────────────┐
│   Compteur Simple   │
├─────────────────────┤
│                     │
│         5           │  ← Taille 48, gras, bleu
│                     │
│    [ - ]   [ + ]    │  ← Deux boutons côte à côte
│                     │
└─────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/counter_model.dart**
```dart
import 'package:flutter/foundation.dart';

// TODO: Créez votre classe CounterModel ici
class CounterModel extends ChangeNotifier {
  // TODO: Déclarez _count
  
  
  // TODO: Créez le getter count
  
  
  // TODO: Créez la méthode increment()
  
  
  
  
  
  // TODO: Créez la méthode decrement()
  
  
  
  
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Enveloppez avec ChangeNotifierProvider
    return MaterialApp(
      title: 'Compteur Provider',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Simple'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Utilisez Consumer<CounterModel> pour afficher le nombre
            
            
            
            
            
            
            
            
            
            
            
            SizedBox(height: 40),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO: Bouton - pour décrémenter
                ElevatedButton(
                  onPressed: () {
                    // TODO: Appelez decrement()
                    
                  },
                  child: Icon(Icons.remove),
                ),
                
                SizedBox(width: 20),
                
                // TODO: Bouton + pour incrémenter
                ElevatedButton(
                  onPressed: () {
                    // TODO: Appelez increment()
                    
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

---

### Grille de notation (10 points)

- [ ] Classe CounterModel extends ChangeNotifier (1 pt)
- [ ] Variable _count et getter corrects (1 pt)
- [ ] Méthodes increment() et decrement() avec notifyListeners() (2 pts)
- [ ] ChangeNotifierProvider configuré correctement (2 pts)
- [ ] Consumer utilisé pour afficher le count (2 pts)
- [ ] context.read() utilisé dans les boutons (1 pt)
- [ ] Code compile sans erreur (1 pt)




<br/>
<br/>

# PARTIE 2 : Provider Liste de Courses 

### Énoncé

Créez une application de **liste de courses** utilisant Provider pour gérer l'état.

**Spécifications** :

1. Créer une classe `ShoppingListModel` qui étend `ChangeNotifier`
2. Le modèle doit contenir :
   - Une liste privée `_items` de type `List<String>`
   - Un getter `items` qui retourne une copie non modifiable
   - Une méthode `addItem(String item)` pour ajouter un article
   - Une méthode `removeItem(int index)` pour supprimer un article
   - Un getter `itemCount` qui retourne le nombre d'articles
3. L'interface doit afficher :
   - Un TextField pour saisir un nouvel article
   - Un bouton "Ajouter" pour ajouter l'article
   - Une ListView qui affiche tous les articles
   - Chaque article doit avoir une icône de suppression
   - Un compteur en haut : "X articles"

**Contraintes techniques** :
- Utiliser `ChangeNotifierProvider` au niveau racine
- Utiliser `Consumer` pour la liste ET pour le compteur
- Utiliser un `TextEditingController` pour le TextField
- Effacer le TextField après l'ajout
- Ne pas permettre d'ajouter un article vide

**Interface attendue** :
```
┌──────────────────────────────┐
│  Liste de Courses            │
├──────────────────────────────┤
│  3 articles                  │  ← Compteur dynamique
│                              │
│  [_______________] [Ajouter] │  ← TextField + bouton
│                              │
│  • Lait              [X]     │
│  • Pain              [X]     │
│  • Oeufs             [X]     │
│                              │
└──────────────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/shopping_list_model.dart**
```dart
import 'package:flutter/foundation.dart';

class ShoppingListModel extends ChangeNotifier {
  // TODO: Déclarez la liste privée _items
  
  
  // TODO: Créez le getter items (retourne List.unmodifiable)
  
  
  
  // TODO: Créez le getter itemCount
  
  
  
  // TODO: Créez la méthode addItem(String item)
  
  
  
  
  
  // TODO: Créez la méthode removeItem(int index)
  
  
  
  
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/shopping_list_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoppingListModel(),
      child: MaterialApp(
        title: 'Liste de Courses',
        home: ShoppingListScreen(),
      ),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de Courses'),
      ),
      body: Column(
        children: [
          // TODO: Consumer pour afficher le nombre d'articles
          
          
          
          
          
          
          
          
          
          
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Nouvel article',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Ajoutez l'article si non vide
                    
                    
                    
                    
                    
                  },
                  child: Text('Ajouter'),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: // TODO: Consumer<ShoppingListModel> avec ListView.builder
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          ),
        ],
      ),
    );
  }
}
```


### Grille de notation (10 points)

- [ ] ShoppingListModel avec liste privée et getters (1 pt)
- [ ] Méthode addItem correcte avec notifyListeners() (1 pt)
- [ ] Méthode removeItem correcte avec notifyListeners() (1 pt)
- [ ] ChangeNotifierProvider configuré (1 pt)
- [ ] Consumer pour le compteur d'articles (2 pts)
- [ ] Consumer pour la ListView (2 pts)
- [ ] Gestion du TextField (ajout et effacement) (1 pt)
- [ ] Code compile et fonctionne correctement (1 pt)

---



<br/>
<br/>

# PARTIE 3 : Provider Multi-Modèles avec Theme 

### Énoncé

Créez une application avec **plusieurs Providers** : un pour le thème (mode sombre/clair) et un pour le contenu.

**Spécifications** :

1. Créer une classe `ThemeModel` qui étend `ChangeNotifier`
   - Variable `_isDarkMode` (bool)
   - Getter `isDarkMode`
   - Méthode `toggleTheme()` pour basculer le thème

2. Créer une classe `ContentModel` qui étend `ChangeNotifier`
   - Variable `_title` (String)
   - Getter `title`
   - Méthode `changeTitle(String newTitle)` pour changer le titre

3. Utiliser `MultiProvider` pour fournir les deux modèles

4. L'interface doit avoir :
   - Un Switch pour basculer le thème
   - Un TextField pour changer le titre
   - L'affichage du titre actuel
   - Le thème doit s'appliquer à toute l'application

**Contraintes techniques** :
- Utiliser `MultiProvider` avec les deux providers
- Le thème doit changer immédiatement lors du toggle
- Utiliser `ThemeData.light()` et `ThemeData.dark()`
- Séparer les modèles dans des fichiers différents
- Utiliser `context.watch()` pour lire les valeurs

**Interface attendue** :
```
┌──────────────────────────────┐
│  Mon Application     [Mode]  │  ← Switch pour le thème
├──────────────────────────────┤
│                              │
│  Titre actuel:               │
│  "Bienvenue"                 │  ← Titre dynamique, taille 32
│                              │
│  Changer le titre:           │
│  [___________________]       │  ← TextField
│         [Modifier]           │  ← Bouton
│                              │
└──────────────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/theme_model.dart**
```dart
import 'package:flutter/foundation.dart';

class ThemeModel extends ChangeNotifier {
  // TODO: Déclarez _isDarkMode
  
  
  // TODO: Créez le getter isDarkMode
  
  
  
  // TODO: Créez la méthode toggleTheme()
  
  
  
  
}
```

**Fichier : lib/models/content_model.dart**
```dart
import 'package:flutter/foundation.dart';

class ContentModel extends ChangeNotifier {
  // TODO: Déclarez _title avec une valeur initiale
  
  
  // TODO: Créez le getter title
  
  
  
  // TODO: Créez la méthode changeTitle(String newTitle)
  
  
  
  
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/theme_model.dart';
import 'models/content_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Utilisez MultiProvider pour fournir les deux modèles
    return MultiProvider(
      providers: [
        // TODO: Ajoutez ChangeNotifierProvider pour ThemeModel
        
        
        // TODO: Ajoutez ChangeNotifierProvider pour ContentModel
        
        
      ],
      child: AppContent(),
    );
  }
}

class AppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Utilisez context.watch<ThemeModel>() pour obtenir le thème
    
    
    return MaterialApp(
      title: 'Multi Provider Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: // TODO: Basez le themeMode sur isDarkMode
      
      
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: Utilisez context.watch pour accéder aux deux modèles
    
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Application'),
        actions: [
          // TODO: Ajoutez le Switch pour le thème
          
          
          
          
          
          
          
          
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Titre actuel:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              
              // TODO: Affichez le titre actuel depuis ContentModel
              
              
              
              
              
              
              SizedBox(height: 40),
              
              Text(
                'Changer le titre:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Nouveau titre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              
              ElevatedButton(
                onPressed: () {
                  // TODO: Changez le titre et effacez le TextField
                  
                  
                  
                },
                child: Text('Modifier'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```


### Grille de notation (10 points)

- [ ] ThemeModel créé correctement (1 pt)
- [ ] ContentModel créé correctement (1 pt)
- [ ] MultiProvider configuré avec les deux providers (2 pts)
- [ ] Switch pour le thème fonctionnel (2 pts)
- [ ] Changement de titre fonctionnel (1 pt)
- [ ] ThemeData.light/dark appliqué correctement (2 pts)
- [ ] Code compile et fonctionne sans erreur (1 pt)




<br/>
<br/>

# BONUS : Défis supplémentaires (points bonus)

# Défi 1 : Compteur avec historique 

Améliorez le compteur (Partie 1) pour ajouter :
- Un historique de toutes les opérations ("+1", "-1")
- Un bouton "Reset" qui remet à 0
- Un bouton "Annuler" qui annule la dernière opération
- Afficher l'historique dans une ListView

**Indice** : Ajoutez une `List<String>` dans le modèle pour stocker l'historique

<br/>
<br/>


# Défi 2 : Liste de courses avec catégories 

Améliorez la liste de courses (Partie 2) pour ajouter :
- Des catégories (Fruits, Légumes, Épicerie, etc.)
- Chaque article a une catégorie
- Filtrer par catégorie
- Compter les articles par catégorie

**Indice** : Créez une classe `ShoppingItem` avec `name` et `category`

<br/>
<br/>

# Défi 3 : Persistence du thème 

Améliorez l'application multi-modèles (Partie 3) pour :
- Sauvegarder le thème dans SharedPreferences
- Restaurer le thème au démarrage de l'application
- Sauvegarder aussi le dernier titre utilisé

**Indice** : Utilisez le package `shared_preferences` et chargez les données dans le constructeur du modèle

<br/>
<br/>

# Défi 4 : Application complète Todo avec Provider 

Créez une application Todo complète avec :
- Plusieurs écrans (liste, détails, paramètres)
- Provider pour les todos
- Provider pour les paramètres (thème, tri, filtres)
- Marquage des tâches comme complétées
- Tri par date, priorité, statut
- Filtres : Toutes, Actives, Complétées
- Compteurs de statistiques

**Structure recommandée** :
```
lib/
  models/
    todo_model.dart
    settings_model.dart
  screens/
    todo_list_screen.dart
    todo_detail_screen.dart
    settings_screen.dart
  widgets/
    todo_item.dart
    filter_buttons.dart
  main.dart
```


<br/>
<br/>

---

## Notes pédagogiques

### Quand utiliser context.watch() vs context.read() ?

- **context.watch()** : Pour LIRE des valeurs et se REBUILDER quand elles changent
  ```dart
  final counter = context.watch<CounterModel>();
  return Text('${counter.count}'); // Se rebuild quand count change
  ```

- **context.read()** : Pour APPELER des méthodes SANS se rebuilder
  ```dart
  onPressed: () {
    context.read<CounterModel>().increment(); // N'écoute pas les changements
  }
  ```

### Consumer vs context.watch() ?

Les deux font la même chose, mais :
- **Consumer** : Plus explicite, meilleure optimisation (rebuild uniquement le Consumer)
- **context.watch()** : Plus simple, rebuild tout le widget

### Erreurs courantes à éviter

1. Oublier `notifyListeners()` après modification → UI ne se met pas à jour
2. Utiliser `context.watch()` dans un `onPressed` → Erreur "setState during build"
3. Ne pas utiliser `listen: false` dans les actions → Rebuilds inutiles
4. Modifier directement une liste publique → Pas de notification envoyée

### Bonnes pratiques

1. Variables privées avec getters publics
2. Retourner des copies non modifiables des collections (`List.unmodifiable`)
3. Un Provider par responsabilité (séparation des préoccupations)
4. Utiliser `MultiProvider` quand vous avez plusieurs providers
5. Nommer les modèles avec le suffixe "Model" ou "Provider"

