#!/usr/bin/env bash

# Install PHP extensions with PECL
pecl install imagick

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet localheinz/composer-normalize sensiolabs/security-checker

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Update the Laravel Valet default domain
$HOME/.composer/vendor/bin/valet domain app
