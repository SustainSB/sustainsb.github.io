#!/bin/sh

export GH_USER=sustainsb
export GH_REPO=sustainsb.github.io

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git add . *.html
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-up https://${GH_TOKEN}@github.com/${GH_USER}/${GH_REPO}.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-up
}

setup_git
commit_website_files
upload_files