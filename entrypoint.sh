#!/bin/sh
echo "Currently in $(pwd) path"
echo "composer.json file to use: ${COMPOSER}"
echo ""

# Store the GIT credentials in cache
git config --global credential.helper "cache --timeout=3600"

if [ $1 == "build" ]
then
    php -d phar.readonly=off /usr/local/bin/phar-composer $@
elif [ $1 == "composer" ]
then
   $@
else
    echo "You can use the following commands:"
    echo "   build                      Use phar-composer to build a phar from a local installation"
    echo "   build <Repository URL>     Use phar-composer to build a phar from a remote repository"
    echo "   composer install           Use composer install, to install the $COMPOSER requirements"
    echo "   composer update            Use composer update, to update the $COMPOSER requirements"
fi

