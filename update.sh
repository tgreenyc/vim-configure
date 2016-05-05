#!/bin/bash

set -e

for dir in `echo *`; do
  if [ -d $dir ]; then
    (cd $dir && git pull)
  fi
done
