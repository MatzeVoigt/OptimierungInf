#!/bin/bash

for file in ex*/*.tex
do
    echo "$file"
    iconv -f ISO-8859-1 -t UTF-8 -o "$file.new" "$file"
    mv -f "$file.new" "$file"
done
