#!/usr/bin/env bash

# Update NPM
npm update -g npm

# Node Packages to Install
packages=(
    @vue/cli
    vuepress
)

# Install the NPM packages globally
for package in "${packages[@]}"; do
    npm install -g "$package"
done
