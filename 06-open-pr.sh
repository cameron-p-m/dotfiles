#!/bin/sh


branch=`git rev-parse --abbrev-ref HEAD`
rawUrl=`git config --get remote.origin.url | awk '{sub(/:/,"/")}1' | awk '{sub(/git@/,"https://")}1' | sed 's/.git$//'`
finalUrl="${rawUrl}/compare/${branch}?expand=1"

open "${finalUrl}"