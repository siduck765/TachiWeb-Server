#!/usr/bin/env bash
echo "Removing old web components..."
rm -rf bower_components

echo "Building web components..."
pushd src/main/resources/tachiweb-ui
bower install

echo "Removing unnecessary files..."
pushd bower_components
# Material icons (takes forever to copy all of these)
pushd material-design-icons
rm -rf action alert av communication content device editor file hardware image maps navigation notification places social toggle
popd
popd

popd