#!/usr/bin/env bash

# make sure we have a single argument, which will be the name of the new directory
if [ -z "$1" ]; then
  echo "Provide a new directory name as the first argument." >&2
  exit 1
fi

# make new directory based on first argument
mkdir "$1"
# cd into new directory
cd "$1"
# make index.html file
touch index.html
# make javascript folder
mkdir js
# make main.js file inside javascript folder
touch js/main.js
# make CSS folder
mkdir stylesheets
# put styles.css into CSS folder
touch stylesheets/style.css
# put our HTML boilerplate inside the index.html file
echo "<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>quickHTML</title>
    <link rel="stylesheet" href="stylesheets/style.css">
  </head>
  <body>
    <script src="js/main.js"></script>
  </body>
</html>" >> index.html

cd ..
