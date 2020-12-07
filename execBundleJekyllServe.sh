#!/bin/bash

echo "Starting bundle jekyll serve and deleting old temp"
rm ./_config-temp.yml

echo "Copying"
cp ./_config.yml ./_config-temp.yml

echo "Executing SED Change for Minimal Mistakes"
sed -i '/remote_theme/c\theme			 : "minimal-mistakes-jekyll"' ./_config-temp.yml

echo "Trying bundle install"
bundle install

bundle exec jekyll serve --config ./_config-temp.yml --host=0.0.0.0
