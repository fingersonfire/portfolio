#!/bin/bash

# Build the web application
flutter build web --release

# Copy all files and overwrite existing to the github.io repo
cp -rf build/web/* ~/Development/StonePack.github.io/

# Add, commit, and push all changes
git -C ~/Development/StonePack.github.io/ add .
git -C ~/Development/StonePack.github.io/ commit -m 'automatic deploy'
git -C ~/Development/StonePack.github.io/ push