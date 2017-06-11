#!/bin/sh

export GH_USER=SustainSB
export GH_REPO=sustainsb.github.io
export GH_BRANCH=master

setup_git() {
  git config --global user.email "ben@ecoquants.com"
  git config --global user.name "Ben Best"
  git config --global push.default matching
}

commit_website_files() {
  #git checkout ${GH_BRANCH}
  git add --all
  git commit -am "Travis render & push [skip ci]: $TRAVIS_BUILD_NUMBER"
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