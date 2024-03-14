#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://milkteamonster.github.io.milkteamonster/milkteamonster.github.io.git main
git push -f git@github.com:milkteamonster/milkteamonster.github.io.git main

# if you are deploying to https://milkteamonster.github.io/create-vue-sample
# git push -f git@github.com:milkteamonster/create-vue-sample.git main:gh-pages

cd -