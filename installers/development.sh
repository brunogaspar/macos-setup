#!/usr/bin/env bash

# Install PHP extensions with PECL
pecl install imagick
pecl install mongodb
pecl install redis
pecl install xdebug
pecl install yaml

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Update the Laravel Valet default domain
$HOME/.composer/vendor/bin/valet domain app
