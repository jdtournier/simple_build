#!/bin/bash 

( 
  cd tests
  for folder in *; do (
    cd $folder
    echo "================================"
    echo "In $folder"
    echo "--------------------------------"
    ../../build && { 
      echo "--------------------------------"
      ../../build clean
    }
    echo ""
  ) done
)
