#!/bin/bash


function tag_commit() {
    VERSION='1.0.1-Nightly-'
    today=$(date +%F)

    tag="$VERSION$today"

    echo "Commit Tag:"
    echo $tag
    echo ""
    git tag -a $tag
    git push --tags

}

git status --porcelain

echo "Do you wish to tag this commit and push?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) tag_commit; break;;
        No ) exit;;
    esac
done