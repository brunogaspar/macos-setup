#!/usr/bin/env bash

# Install PHP extensions with PECL
pecl install imagick

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Update the Laravel Valet default domain
$HOME/.composer/vendor/bin/valet domain app
