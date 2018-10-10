#!/bin/sh

for file in `ag -l "${1}"`; do
  sed -E -i "" -e "s/${1}/${2}/g" $file
done
