# Exercice Pratique : Changer les Backgrounds avec Provider

## Instructions

Dans cet exercice, vous allez **DÉVELOPPER** des applications Flutter pour gérer dynamiquement les backgrounds avec Provider.

**Objectif** : Créer 3 applications fonctionnelles qui changent les arrière-plans de manière interactive.


# PARTIE 1 : Changement de Couleur Simple 

### Énoncé

Créez une application qui permet de **changer la couleur de fond** de l'écran en appuyant sur des boutons.

**Spécifications** :

1. Créer une classe `BackgroundColorModel` qui étend `ChangeNotifier`
2. Le modèle doit contenir :
   - Une variable privée `_backgroundColor` de type `Color` (initialisée à blanc)
   - Un getter `backgroundColor` pour accéder à la couleur
   - Une méthode `changeColor(Color newColor)` pour changer la couleur
3. L'interface doit afficher :
   - Un fond coloré qui change selon la sélection
   - 5 boutons de couleurs différentes (Rouge, Bleu, Vert, Jaune, Violet)
   - Le nom de la couleur actuelle en grand
4. Les boutons doivent être circulaires avec la couleur correspondante

**Contraintes techniques** :
- Utiliser `ChangeNotifierProvider` au niveau racine
- Le Scaffold doit avoir `backgroundColor` dynamique
- Utiliser `Consumer<BackgroundColorModel>` pour le Scaffold
- Les boutons doivent utiliser `context.read()` pour changer la couleur
- Créer le modèle dans un fichier séparé

**Interface attendue** :
```
┌──────────────────────────────┐
│                              │  ← Fond coloré (change dynamiquement)
│                              │
│         BLEU                 │  ← Nom de la couleur (taille 36)
│                              │
│                              │
│   (R)  (B)  (V)  (J)  (P)   │  ← Boutons circulaires colorés
│                              │
└──────────────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/background_color_model.dart**
```dart
import 'package:flutter/material.dart';

class BackgroundColorModel extends ChangeNotifier {
  // TODO: Déclarez _backgroundColor (initialisée à Colors.white)
  
  
  // TODO: Créez le getter backgroundColor
  
  
  
  // TODO: Créez la méthode changeColor(Color newColor)
  
  
  
  
  
  // TODO: BONUS - Créez une méthode getColorName() qui retourne le nom de la couleur
  
  
  
  
  
  
  
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/background_color_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BackgroundColorModel(),
      child: MaterialApp(
        title: 'Changement de Couleur',
        home: ColorScreen(),
      ),
    );
  }
}

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BackgroundColorModel>(
      builder: (context, model, child) {
        return Scaffold(
          // TODO: Utilisez la couleur du modèle pour backgroundColor
          backgroundColor: 
          
          appBar: AppBar(
            title: Text('Changement de Couleur'),
            backgroundColor: Colors.black87,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO: Affichez le nom de la couleur actuelle
                
                
                
                
                
                
                SizedBox(height: 60),
                
                // TODO: Créez une rangée de 5 boutons circulaires colorés
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // TODO: Bouton Rouge
                    
                    
                    
                    
                    
                    
                    
                    
                    // TODO: Bouton Bleu
                    
                    
                    
                    
                    
                    
                    // TODO: Bouton Vert
                    
                    
                    
                    
                    
                    
                    // TODO: Bouton Jaune
                    
                    
                    
                    
                    
                    
                    // TODO: Bouton Violet
                    
                    
                    
                    
                    
                    
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  
  // TODO: Créez une méthode helper pour construire un bouton coloré
  Widget buildColorButton(BuildContext context, Color color) {
    return // TODO: Retournez un GestureDetector avec Container circulaire
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  }
}
```

---

### Grille de notation (10 points)

- [ ] BackgroundColorModel extends ChangeNotifier (1 pt)
- [ ] Variable _backgroundColor et getter (1 pt)
- [ ] Méthode changeColor avec notifyListeners() (1 pt)
- [ ] ChangeNotifierProvider configuré (1 pt)
- [ ] Consumer utilisé pour le Scaffold (2 pts)
- [ ] 5 boutons circulaires colorés fonctionnels (2 pts)
- [ ] Affichage du nom de la couleur (1 pt)
- [ ] Code compile sans erreur (1 pt)




<br/>
<br/>

# PARTIE 2 : Background avec Dégradés 

### Énoncé

Créez une application qui permet de **changer le dégradé de fond** avec différents presets.

**Spécifications** :

1. Créer une classe `GradientModel` qui étend `ChangeNotifier`
2. Le modèle doit contenir :
   - Une variable `_currentGradient` de type `LinearGradient`
   - Un getter `currentGradient`
   - Des méthodes prédéfinies : `setSunset()`, `setOcean()`, `setForest()`, `setFire()`
   - Chaque méthode applique un dégradé différent
3. L'interface doit afficher :
   - Un fond avec dégradé qui change
   - 4 boutons avec le nom du dégradé
   - Le nom du dégradé actuel en haut
4. Utiliser `Container` avec `BoxDecoration` et `gradient`

**Contraintes techniques** :
- Utiliser `LinearGradient` avec au moins 2 couleurs par dégradé
- Utiliser `begin: Alignment.topLeft` et `end: Alignment.bottomRight`
- Le Container doit prendre tout l'écran avec `double.infinity`
- Créer des dégradés visuellement attractifs

**Exemples de dégradés** :
- Sunset : Orange → Rose → Violet
- Ocean : Bleu clair → Bleu foncé
- Forest : Vert clair → Vert foncé
- Fire : Jaune → Orange → Rouge

**Interface attendue** :
```
┌──────────────────────────────┐
│     Dégradé: SUNSET          │  ← Texte sur fond dégradé
│                              │
│      [ORANGE → VIOLET]       │  ← Fond avec dégradé
│                              │
│                              │
│  [Sunset] [Ocean]            │  ← Boutons avec texte
│  [Forest] [Fire]             │
│                              │
└──────────────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/gradient_model.dart**
```dart
import 'package:flutter/material.dart';

class GradientModel extends ChangeNotifier {
  // TODO: Déclarez _currentGradient (initialisé avec un dégradé par défaut)
  
  
  
  
  // TODO: Déclarez _currentName pour stocker le nom du dégradé
  
  
  // TODO: Créez le getter currentGradient
  
  
  
  // TODO: Créez le getter currentName
  
  
  
  // TODO: Créez la méthode setSunset()
  void setSunset() {
    // Dégradé : Orange → Rose → Violet
    
    
    
    
    
    
  }
  
  // TODO: Créez la méthode setOcean()
  void setOcean() {
    // Dégradé : Bleu clair → Bleu foncé
    
    
    
    
    
    
  }
  
  // TODO: Créez la méthode setForest()
  void setForest() {
    // Dégradé : Vert clair → Vert foncé
    
    
    
    
    
    
  }
  
  // TODO: Créez la méthode setFire()
  void setFire() {
    // Dégradé : Jaune → Orange → Rouge
    
    
    
    
    
    
  }
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/gradient_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GradientModel(),
      child: MaterialApp(
        title: 'Dégradés',
        home: GradientScreen(),
      ),
    );
  }
}

class GradientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GradientModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            // TODO: Utilisez le dégradé du modèle
            decoration: BoxDecoration(
              gradient: 
              
            ),
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  
                  // TODO: Affichez le nom du dégradé actuel
                  
                  
                  
                  
                  
                  
                  Spacer(),
                  
                  // TODO: Créez une grille 2x2 de boutons pour changer le dégradé
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: // TODO: Bouton Sunset
                              
                              
                              
                              
                              
                              
                              
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: // TODO: Bouton Ocean
                              
                              
                              
                              
                              
                              
                              
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: // TODO: Bouton Forest
                              
                              
                              
                              
                              
                              
                              
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: // TODO: Bouton Fire
                              
                              
                              
                              
                              
                              
                              
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
```


### Grille de notation (10 points)

- [ ] GradientModel avec LinearGradient (1 pt)
- [ ] 4 méthodes de dégradé avec notifyListeners() (2 pts)
- [ ] Dégradés visuellement corrects (2 pts)
- [ ] ChangeNotifierProvider configuré (1 pt)
- [ ] Consumer avec Container et BoxDecoration (2 pts)
- [ ] 4 boutons fonctionnels (1 pt)
- [ ] Code compile et fonctionne (1 pt)

---



<br/>
<br/>

# PARTIE 3 : Background avec Images 

### Énoncé

Créez une application qui permet de **changer l'image de fond** et appliquer des effets de transparence.

**Spécifications** :

1. Créer une classe `BackgroundImageModel` qui étend `ChangeNotifier`
2. Le modèle doit contenir :
   - Une variable `_currentImage` (String - chemin de l'image)
   - Une variable `_opacity` (double entre 0.0 et 1.0)
   - Des getters pour ces variables
   - Une méthode `changeImage(String imagePath)`
   - Une méthode `setOpacity(double value)` pour changer la transparence
3. L'interface doit afficher :
   - Une image de fond avec opacité réglable
   - 4 boutons pour changer l'image (nature, ville, espace, mer)
   - Un Slider pour ajuster l'opacité
   - Un texte affichant la valeur d'opacité
4. Utiliser des images de assets ou des couleurs comme placeholder

**Contraintes techniques** :
- Utiliser `Stack` pour superposer l'image et les contrôles
- Utiliser `Opacity` widget ou `ColorFiltered` pour l'effet
- Le Slider doit aller de 0.0 à 1.0
- Afficher l'opacité en pourcentage (0% à 100%)

**Interface attendue** :
```
┌──────────────────────────────┐
│    [Image de fond]           │  ← Image avec opacité variable
│                              │
│    Opacité: 75%              │  ← Affichage de l'opacité
│    [--------●-------]        │  ← Slider
│                              │
│  [Nature] [Ville]            │  ← Boutons de sélection
│  [Espace] [Mer]              │
│                              │
└──────────────────────────────┘
```


### Votre code ici :

**Fichier : lib/models/background_image_model.dart**
```dart
import 'package:flutter/material.dart';

class BackgroundImageModel extends ChangeNotifier {
  // TODO: Déclarez _currentImage (String - utilisez des noms comme 'nature', 'city', etc.)
  
  
  // TODO: Déclarez _opacity (double initialisée à 1.0)
  
  
  // TODO: Créez le getter currentImage
  
  
  
  // TODO: Créez le getter opacity
  
  
  
  // TODO: Créez la méthode changeImage(String imageName)
  
  
  
  
  
  // TODO: Créez la méthode setOpacity(double value)
  
  
  
  
  
  // TODO: BONUS - Créez une méthode getImageColor() qui retourne une couleur selon l'image
  // Nature = vert, City = gris, Space = noir, Sea = bleu
  
  
  
  
  
  
  
  
  
}
```

**Fichier : lib/main.dart**
```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/background_image_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BackgroundImageModel(),
      child: MaterialApp(
        title: 'Background Images',
        home: BackgroundImageScreen(),
      ),
    );
  }
}

class BackgroundImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BackgroundImageModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: Stack(
            children: [
              // TODO: Créez le fond avec Opacity
              Opacity(
                opacity: 
                
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  // TODO: Utilisez une couleur basée sur l'image sélectionnée
                  color: 
                  
                  // Alternative avec une vraie image :
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/${model.currentImage}.jpg'),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
              ),
              
              // Contrôles par-dessus l'image
              SafeArea(
                child: Column(
                  children: [
                    Spacer(),
                    
                    // TODO: Carte avec les contrôles
                    Container(
                      margin: EdgeInsets.all(24),
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          // TODO: Affichez l'opacité en pourcentage
                          
                          
                          
                          
                          
                          SizedBox(height: 16),
                          
                          // TODO: Créez le Slider pour l'opacité
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          SizedBox(height: 32),
                          
                          Text(
                            'Choisir un fond:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          
                          // TODO: Créez une grille 2x2 de boutons
                          Row(
                            children: [
                              Expanded(
                                child: // TODO: Bouton Nature
                                
                                
                                
                                
                                
                                
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: // TODO: Bouton Ville
                                
                                
                                
                                
                                
                                
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: // TODO: Bouton Espace
                                
                                
                                
                                
                                
                                
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: // TODO: Bouton Mer
                                
                                
                                
                                
                                
                                
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
```


### Grille de notation (10 points)

- [ ] BackgroundImageModel avec _currentImage et _opacity (1 pt)
- [ ] Méthodes changeImage et setOpacity avec notifyListeners() (2 pts)
- [ ] ChangeNotifierProvider configuré (1 pt)
- [ ] Stack avec fond et contrôles (1 pt)
- [ ] Opacity widget fonctionnel (1 pt)
- [ ] Slider pour l'opacité fonctionnel (2 pts)
- [ ] 4 boutons pour changer l'image (1 pt)
- [ ] Code compile et fonctionne (1 pt)




<br/>
<br/>

# BONUS : Défis supplémentaires (points bonus)

# Défi 1 : Palette de couleurs personnalisée 

Améliorez l'application de couleurs (Partie 1) pour ajouter :
- Un ColorPicker pour choisir n'importe quelle couleur
- Sauvegarder jusqu'à 10 couleurs favorites
- Afficher l'historique des couleurs utilisées
- Afficher le code hexadécimal de la couleur actuelle

**Indice** : Utilisez le package `flutter_colorpicker` ou créez un simple RGB Slider

<br/>
<br/>


# Défi 2 : Créateur de dégradés personnalisés 

Améliorez l'application de dégradés (Partie 2) pour ajouter :
- Choisir 2 à 4 couleurs pour créer un dégradé personnalisé
- Changer la direction du dégradé (vertical, horizontal, diagonal)
- Sauvegarder les dégradés personnalisés
- Animer la transition entre les dégradés

**Indice** : Utilisez `AnimatedContainer` pour l'animation

<br/>
<br/>

# Défi 3 : Effets avancés sur images 

Améliorez l'application d'images (Partie 3) pour ajouter :
- Filtres de couleur (Noir et blanc, Sépia, etc.)
- Effet de flou (Blur)
- Plusieurs images dans un carousel
- Transition animée entre les images

**Indice** : Utilisez `ColorFiltered` et `BackdropFilter` pour les effets

<br/>
<br/>

# Défi 4 : Application complète de thèmes 

Créez une application complète de personnalisation avec :
- Combinaison de couleurs, dégradés et images
- Plusieurs pages avec le même thème
- Prévisualisations en miniature
- Export/Import de thèmes en JSON
- Thèmes prédéfinis (Professionnel, Coloré, Minimaliste, etc.)

**Structure recommandée** :
```
lib/
  models/
    theme_customization_model.dart
    color_model.dart
    gradient_model.dart
    image_model.dart
  screens/
    home_screen.dart
    color_picker_screen.dart
    gradient_editor_screen.dart
    image_selector_screen.dart
    preview_screen.dart
  widgets/
    color_palette.dart
    gradient_preview.dart
    theme_card.dart
  utils/
    theme_serializer.dart
  main.dart
```


<br/>
<br/>

---

## Notes pédagogiques

### Différence entre Color, Gradient et Image

**Color** : Simple couleur unie
```dart
Container(color: Colors.blue)
```

**Gradient** : Transition entre plusieurs couleurs
```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
    ),
  ),
)
```

**Image** : Photo ou illustration
```dart
Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/image.jpg'),
      fit: BoxFit.cover,
    ),
  ),
)
```

### BoxDecoration vs Container.color

Utilisez `Container.color` pour une couleur simple :
```dart
Container(color: Colors.blue)
```

Utilisez `BoxDecoration` pour des effets avancés :
```dart
Container(
  decoration: BoxDecoration(
    gradient: ...,
    image: ...,
    borderRadius: ...,
    boxShadow: ...,
  ),
)
```

**ATTENTION** : Ne pas utiliser `color` et `decoration` ensemble !

### Opacity vs Colors.withOpacity()

**Opacity widget** : Affecte tout le widget et ses enfants
```dart
Opacity(
  opacity: 0.5,
  child: Container(...),
)
```

**withOpacity()** : Affecte seulement la couleur
```dart
Container(
  color: Colors.blue.withOpacity(0.5),
)
```

### Stack pour superposer des éléments

```dart
Stack(
  children: [
    // Fond (en bas)
    Container(color: Colors.blue),
    
    // Contenu (au milieu)
    Center(child: Text('Hello')),
    
    // Contrôles (en haut)
    Positioned(
      top: 20,
      right: 20,
      child: IconButton(...),
    ),
  ],
)
```

### Bonnes pratiques pour les backgrounds

1. **Performance** : Évitez les images trop grandes (max 2MB)
2. **Lisibilité** : Assurez-vous que le texte reste lisible sur le fond
3. **Accessibilité** : Contraste suffisant (ratio 4.5:1 minimum)
4. **Responsive** : Testez sur différentes tailles d'écran
5. **Cache** : Utilisez `precacheImage()` pour charger les images à l'avance

### Erreurs courantes à éviter

1. Utiliser `color` ET `decoration` ensemble → Erreur
2. Oublier `notifyListeners()` → UI ne se met pas à jour
3. Images trop grandes → App lente
4. Opacité à 0 mais widget toujours interactif → Utiliser `IgnorePointer`
5. Gradient sans `BoxDecoration` → Ne fonctionne pas

### Assets vs Network Images

**Assets** (images locales) :
```dart
Image.asset('assets/image.jpg')
```
Avantages : Rapide, offline, taille contrôlée

**Network** (images depuis internet) :
```dart
Image.network('https://example.com/image.jpg')
```
Avantages : Dynamique, pas dans l'APK, mises à jour faciles

Pour cet exercice, utilisez des **couleurs comme placeholder** si vous n'avez pas d'images.

