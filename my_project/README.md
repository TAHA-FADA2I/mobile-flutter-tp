

markdown
# Mon Premier Projet API

Un projet simple pour découvrir comment :
- Créer une API avec Node.js 🌐
- Communiquer avec Dart 📱

## 📌 Fichiers Principaux


my_project/
├── dart_api_client/      # Client Dart
│   ├── client.dart       # Script principal
│   ├── pubspec.yaml      # Dépendances Dart
│   └── pubspec.lock
├── tp-backend/           # Serveur Node.js
│   ├── server.js         # API REST
│   └── data.json         # Base de données
└── README.md             # Ce fichier     
└── screenshoots          # Affichage

## 🚀 Commencer

1. **Ouvrez deux fenêtres de terminal**

2. **Premier terminal (Serveur)** :
bash
cd tp-backend
node server.js

3. **Deuxième terminal (Client Dart)** :
bash
cd dart_api_client
dart run client.dart


## 💡 Que se passe-t-il ?

- Le serveur démarre sur `http://localhost:3000`
- Le client Dart envoie des requêtes et affiche les résultats
- Les données sont sauvegardées dans `data.json`

## 🆘 Aide Rapide

Si ça ne marche pas :
1. Vérifiez que les programmes sont installés :
   ```bash
   node --version  # Doit afficher une version
   dart --version  # Doit afficher une version
   ```
2. Les deux terminaux doivent rester ouverts
3. Pas d'erreur de frappe dans les commandes

## 🎯 Prochaines Étapes

Essayez de :
1. Modifier `client.dart` pour ajouter d'autres produits
2. Changer `server.js` pour ajouter de nouvelles fonctionnalités
3. Explorer le fichier `data.json` pour voir les données
