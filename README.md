<<<<<<< HEAD
# Assistant

**Assistant** est une application Linux créée en **C++ avec Qt** permettant de lancer rapidement des applications depuis une interface graphique simple et personnalisable.
=======
#  Assistant

# Francais

**YAssistant** est une application Linux/Windows créée en **C++ avec Qt** permettant de lancer rapidement des applications depuis une interface graphique simple et personnalisable.
>>>>>>> 825b2aa (updatedd)

## 📌 Description

 yAssistant est un launcher d'applications avec une interface personnalisée.

Le projet est **open source** : vous pouvez le modifier, l'améliorer et créer votre propre version.

Vous pouvez :

* Modifier le design
* Changer les couleurs
* Ajouter ou supprimer des applications
* Ajouter de nouveaux boutons
* Adapter le projet à votre distribution Linux

## 🐧 Compatibilité

Ce projet est conçu pour :

* Debian / Ubuntu
* Fedora
* Arch Linux
* Linux Mint
* Autres distributions Linux
* Windows

## 🔧 Personnaliser les applications

Les applications lancées par les boutons peuvent être changées facilement dans le code.

Exemple avec Visual Studio Code :

```cpp
QProcess::startDetached("code");
```

Si vous utilisez un autre logiciel, remplacez simplement la commande.

Exemples :

```cpp
QProcess::startDetached("kate");
```

pour KDE Kate :

```cpp
QProcess::startDetached("gedit");
```

pour Gedit.

Pour trouver la commande d'une application sur Linux :

```bash
command -v nom_du_programme
```

Exemple :

```bash
command -v firefox
```

## 📦 Installation

Clonez le projet :

```bash
git clone https://github.com/unnread/Automatisation-App.git
cd Automatisaion-App
```

Puis lancez le script d'installation :

```bash
chmod +x install.sh
./install.sh
```

Le script installe automatiquement les dépendances nécessaires selon votre distribution Linux.

# Pour Windows !🪟

vous devez directement ouvrir le batch. Mais cela nécesite msys2 ucrt64 !

## 🤝 Contribution

Les contributions sont les bienvenues.

Vous pouvez :

* Corriger des bugs
* Ajouter des fonctionnalités
* Améliorer l'interface
* Créer votre propre version

## 👤 Auteur

Créé par **Unnread (pseudonyme)**

Projet développé en **C++ avec Qt pour Linux Windows**.

## 📜 Licence

Ce projet est open source.

Vous êtes libre de :

* Modifier le code
* Adapter le projet
* Créer une version personnalisée
* Partager vos améliorations

Merci de conserver la mention de l'auteur original.

# English 