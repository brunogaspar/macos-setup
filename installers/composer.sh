#!/usr/bin/env bash

# Composer Packages to Install
packages=(
    laravel/valet
    localheinz/composer-normalize
    sensiolabs/security-checker
)

# Install the Composer packages globally
for package in "${packages[@]}"; do
    composer global require "$package"
done
