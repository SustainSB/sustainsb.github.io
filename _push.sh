#!/bin/sh

export GH_USER=sustainsb
export GH_REPO=sustainsb.github.io
export GH_BRANCH=master

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
  git config --global push.default matching
}

commit_website_files() {
  git checkout ${GH_BRANCH}
  git add . *.html
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  echo git remote add origin-token https://${GH_TOKEN}@github.com/${GH_USER}/${GH_REPO}.git
  git remote add origin-token https://${GH_TOKEN}@github.com/${GH_USER}/${GH_REPO}.git
  #git push --quiet --set-upstream origin-up
  git push --set-upstream origin-token ${GH_BRANCH}
}

setup_git
commit_website_files
upload_files