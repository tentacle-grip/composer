# Supported tags and respective `Dockerfile` links

-	[`1.0-php5.6.30` (*1.0-php5.6.30/Dockerfile*)](https://github.com/tentacle-grip/composer/blob/1.0-php5.6.30/Dockerfile)

# What is Composer?
Composer is a tool for dependency management in PHP, written in PHP. It allows you to declare the libraries your project depends on and it will manage (install/update) them for you.
You can read more about Composer in the [official documentation](https://getcomposer.org/doc/).

# Using

## Run the `tentacledock/composer` image, to create the autoload and vendor directory and such, on a local installation:

* composer install
  
  ```bash
  docker run --rm -it \
      -w `pwd` -volume `pwd`:`pwd` \
      tentacledock/composer:1.0-php5.6.30 \
      composer install
  ```

* composer update
  
  ```bash
  docker run --rm -it \
      -w `pwd` -volume `pwd`:`pwd` \
      tentacledock/composer:1.0-php5.6.30 \
      composer update
  ```

## Run the `tentacledock/composer` image, to build a phar file out of a local installation, or a remote version URL:

* build local installation
  
  ```bash
  docker run --rm -it \
      -w `pwd` -volume `pwd`:`pwd` \
      tentacledock/composer:1.0-php5.6.30 \
      build
  ```

* build Remote URL
  
  ```bash
  docker run --rm -it \
      -w `pwd` -volume `pwd`:`pwd` \
      tentacledock/composer:1.0-php5.6.30 \
      build <Repository URL>
  ```
  
## Change Composer file

By default it uses the `composer.json` file.
Using a different `composer.json` file, can be accomplished by adding an environment variable COMPOSER, in all of the commands in the previous paragraph.

**e.g.:**
  ```bash
  docker run --rm -it \
      -e composer-dev.json
      -w `pwd` -volume `pwd`:`pwd` \
      tentacledock/composer:1.0-php5.6.30 \
      build <Repository URL>
  ```

By default, Composer runs as `composer` user inside the container.
