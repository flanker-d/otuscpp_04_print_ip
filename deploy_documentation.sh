#!/bin/sh
__AUTHOR__="Artyom Sorokoumov"

# Required global variables:
# - TRAVIS_BUILD_NUMBER : The number of the current build.
# - TRAVIS_COMMIT       : The commit that the current build is testing.
# - DOXYFILE            : The Doxygen configuration file.
# - GH_REPO_NAME        : The name of the repository.
# - GH_REPO_REF         : The GitHub reference to the repository.
# - GH_REPO_TOKEN       : Secure token to the github repository.

echo 'Setting up the script...'
set -e

doxygen -g print_ip.dox
( cat print_ip.dox ; echo "PROJECT_NAME=Print_IP" ) | doxygen -

mkdir code_docs
cd code_docs

git clone -b gh-pages https://git@$GH_REPO_REF
cd $GH_REPO_NAME

git config --global push.default simple
git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"

rm -rf *

echo "TRAVIS_BUILD_DIR = $TRAVIS_BUILD_DIR" 


if [ -d "../../html" ] && [ -f "../../html/index.html" ]; then
    cp -rv ../../html/* .
    echo 'Uploading documentation to the gh-pages branch...'
    git add --all
    git commit -m "Deploy code docs to GitHub Pages Travis build: ${TRAVIS_BUILD_NUMBER}" -m "Commit: ${TRAVIS_COMMIT}"
    git push --force "https://${GH_REPO_TOKEN}@${GH_REPO_REF}" > /dev/null 2>&1
else
    echo '' >&2
    echo 'Warning: No documentation (html) files have been found!' >&2
    echo 'Warning: Not going to push the documentation to GitHub!' >&2
    exit 1
fi

