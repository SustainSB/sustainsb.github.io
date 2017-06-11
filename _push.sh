#!/bin/sh

export GH_USER=SustainSB
export GH_REPO=sustainsb.github.io
export GH_BRANCH=master

# setup git
git config --global user.email "ben@ecoquants.com"
git config --global user.name "Ben Best"
git config --global push.default matching

# git commit
git checkout ${GH_BRANCH}
git add --all
git commit -am "Travis push [skip ci]: build $TRAVIS_BUILD_NUMBER"

# git push
git remote add upstream "https://${GH_TOKEN}@github.com/${GH_OWNER}/${GH_REPO}.git"
git push -q upstream ${GH_BRANCH}
