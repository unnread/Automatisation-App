@echo off
title Installation Qt6 - MSYS2 UCRT64
color 0A

echo ==========================================
echo     Installation Qt6 pour Windows
echo ==========================================
echo.

:: Vérification de MSYS2 UCRT64
if not exist "C:\msys64\ucrt64\bin\g++.exe" (
    echo [ERREUR] MSYS2 UCRT64 n'est pas installe.
    echo.
    echo Ce script necessite MSYS2 UCRT64.
    echo.
    pause
    exit /b 1
)

echo [OK] MSYS2 UCRT64 detecte.
echo.

echo Installation de GCC/G++ et Qt6...
echo.

C:\msys64\usr\bin\bash.exe -lc "pacman -S --needed --noconfirm mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-qt6-base mingw-w64-ucrt-x86_64-qt6-tools"

if errorlevel 1 (
    echo.
    echo [ERREUR] Installation echouee.
    echo.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo       INSTALLATION TERMINEE !
echo ==========================================
echo.
echo MSYS2 UCRT64 : OK
echo GCC / G++    : OK
echo Qt6          : OK
echo.

pause