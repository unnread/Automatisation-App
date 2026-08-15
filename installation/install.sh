#!/bin/bash

echo "Assistant - Installation des dépendances Qt C++"
echo "----------------------------------------------"

if command -v apt >/dev/null 2>&1; then
    echo "Distribution Debian/Ubuntu détectée"

    sudo apt update
    sudo apt install -y qt6-base-dev qt6-base-dev-tools build-essential git pkg-config

elif command -v dnf >/dev/null 2>&1; then
    echo "Distribution Fedora/RHEL détectée"

    sudo dnf install -y qt6-qtbase-devel gcc-c++ git make pkg-config

elif command -v pacman >/dev/null 2>&1; then
    echo "Distribution Arch détectée"

    sudo pacman -Sy --needed qt6-base gcc git make pkg-config

elif command -v zypper >/dev/null 2>&1; then
    echo "Distribution openSUSE détectée"

    sudo zypper install -y qt6-base-devel gcc-c++ git make pkg-config

elif command -v xbps-install >/dev/null 2>&1; then
    echo "Distribution Void Linux détectée"

    sudo xbps-install -Sy qt6-base-devel gcc git make pkg-config

elif command -v apk >/dev/null 2>&1; then
    echo "Distribution Alpine détectée"

    sudo apk add qt6-qtbase-dev gcc g++ git make pkgconfig

else
    echo "Distribution non supportée"
    echo "Installez manuellement Qt 6 et un compilateur C++."
    exit 1
fi

echo ""
echo "Installation terminée !"
echo ""
echo "Vous pouvez maintenant compiler le projet :"
echo 'g++ index.cpp -o assistant $(pkg-config --cflags --libs Qt6Widgets)'
echo ""
echo "Ensuite :"
echo "./assistant"
echo ""
echo "Bye !"