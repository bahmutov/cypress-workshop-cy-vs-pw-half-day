#!/usr/bin/env bash

# convert each deployed presentation to a PDF file
# list of section names
sections=(
  "intro"
  "00-start"
  "01-basic"
  "02-adding-items"
  "03-completing-items"
  "04-test-ui"
  "06-network"
  "09-app-access"
  "end"
)

for section in "${sections[@]}"; do
  npx decktape reveal http://localhost:3100/?p="$section" pdf/"$section".pdf
done
