#!/bin/bash

for folder in ex*
do
  cd $folder
  for file in  *.tex
  do
      echo "$file"
      latex "$file"
      echo "$(basename -- "$file" .tex).dvi"
      dvipdf "$(basename -- "$file" .tex).dvi"
      rm *.aux *.log *.dvi *.ps *.out
  done
  cd ..
done
