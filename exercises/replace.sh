#!/bin/bash

for file in ex*/*.tex
do
    echo "$file"
    #sed -i s/latin1/utf8/g "$file"
    #sed -i s/Thomas\ Andreae//g "$file"
    sed -i  "s/2017\/18/2019\/20/g" "$file"
done
