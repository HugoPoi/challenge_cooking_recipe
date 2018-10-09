# Cooking Recipes

## Build on debian
1. `apt install libmysqlclient-dev`
1. `make`

## Build on OSX
1. Dans un terminal
1. Installer brew `/usr/bin/ruby -e "$(curl -fsSL
   https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. Installer json-c `brew install json-c`

### Pour XCode
1. Créer un Projet XCode C
1. Configurer les Build Settings `Search Paths > Header Search Paths`
   `/usr/local/Cellar/json-c/0.12.1/include`
1. Configurer les Build Settings `Search Paths > Header Search Paths`
   `/usr/local/Cellar/json-c/0.12.1/lib`
1. Configurer les Build Settings `Linking > Other Linker Flags` `-lcurl
   -ljson-c`

## Build on Windows
1. Install CodeBlocks with MinGW
1. libcurl mingw https://curl.haxx.se/gknw.net/7.40.0/dist-w32/curl-7.40.0-devel-mingw32.zip
1. Project > Build Options > Sélectioner le nom du projet puis aller à l'onglet `Linker Settings`
   ajouter `curl/lib/libcurl.a`
1. Project > Build Options > Sélectioner le nom du projet puis aller à l'onglet `Linker Settings`
   ajouter `curl/lib/libcurldll.a`
1. Project > Build Options > Sélectioner le nom du projet puis aller à l'onglet `Search Directory > Compiler`
   ajouter `curl/include`


