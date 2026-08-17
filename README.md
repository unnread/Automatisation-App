# yAssistant

## 🇫🇷 Français

**yAssistant** est une application Linux/Windows créée en **C++ avec Qt**, permettant de lancer rapidement des applications depuis une interface graphique simple et personnalisable.

Le projet est **open source** : vous pouvez le modifier, l'améliorer et créer votre propre version.

Vous pouvez notamment :

* Modifier le design
* Changer les couleurs
* Ajouter ou supprimer des applications
* Ajouter de nouveaux boutons
* Adapter le projet à votre système d'exploitation

## 💻 Compatibilité

yAssistant est conçu pour fonctionner sur plusieurs systèmes d'exploitation :

* 🐧 Debian / Ubuntu
* 🐧 Fedora
* 🐧 Arch Linux
* 🐧 Linux Mint
* 🐧 Autres distributions Linux
* 🪟 Windows

Le projet utilise **Qt**, ce qui permet d'avoir une application graphique compatible avec plusieurs systèmes.

## 🔧 Personnaliser les applications

Les applications lancées par les boutons peuvent être facilement modifiées dans le code.

Par exemple, pour lancer Visual Studio Code :

```cpp
QProcess::startDetached("code");
```

Pour lancer KDE Kate :

```cpp
QProcess::startDetached("kate");
```

Pour lancer Gedit :

```cpp
QProcess::startDetached("gedit");
```

### 🐧 Trouver la commande d'une application sous Linux

```bash
command -v nom_du_programme
```

Exemple :

```bash
command -v firefox
```

## 📦 Installation sous Linux

Clonez le projet :

```bash
git clone https://github.com/unnread/Automatisation-App.git
cd Automatisation-App
```

Rendez le script d'installation exécutable :

```bash
chmod +x install.sh
```

Puis lancez-le :

```bash
./install.sh
```

Le script `install.sh` permet d'automatiser l'installation des dépendances nécessaires et la préparation du projet sous Linux.

## 🪟 Installation sous Windows

La version Windows utilise un script **Batch (`.bat`)** pour automatiser l'installation et/ou la compilation.

### ⚠️ Prérequis : MSYS2 UCRT64

Pour utiliser les scripts de compilation Windows, vous devez avoir **MSYS2 avec l'environnement UCRT64** installé.

Une fois MSYS2 installé, ouvrez le terminal **MSYS2 UCRT64**.

Vous pouvez ensuite lancer le fichier Batch fourni avec le projet :

```bat
install.bat
```

Le nom du fichier peut varier selon la version du projet.

> Le script Batch nécessite **MSYS2 UCRT64** et les outils de compilation nécessaires.

## 🛠️ Scripts d'installation

### Linux

Le script utilisé est :

```text
install.sh
```

Exécution :

```bash
chmod +x install.sh
./install.sh
```

### Windows

Le script utilisé est :

```text
install.bat
```

Il doit être utilisé avec **MSYS2 UCRT64**.

## 👤 Auteur

Créé par **Unnread** (pseudonyme).

Projet développé en **C++ avec Qt** pour Linux et Windows.

## 📜 Licence

Ce projet est open source.

Vous êtes libre de :

* Modifier le code
* Adapter le projet
* Créer une version personnalisée
* Partager vos améliorations

Merci de conserver la mention de l'auteur original.


# English 
