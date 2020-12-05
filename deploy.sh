#!/bin/bash
echo "--------------------------------------"
echo "Deploy Document"
echo "--------------------------------------"
echo ""

DOCUMENT_CONTENT=content
DOCUMENT_VERSION_CURRENT="Deploy document"
DOCUMENT_VERSION=$1

if [ -z != $DOCUMENT_VERSION ]
then
DOCUMENT_VERSION="New Release: $DOCUMENT_VERSION"
else
DOCUMENT_VERSION=$DOCUMENT_VERSION_CURRENT
fi

echo ""
echo $DOCUMENT_VERSION
echo ""

#rm -fr $DOCUMENT_VERSION

echo "gitbook generate pages start ..."
gitbook build ./ $DOCUMENT_CONTENT
echo "gitbook generate pages done"

echo ""

git status
echo ""
git add --all
echo ""
git commit -m "$DOCUMENT_VERSION"
echo ""
git push origin gh-pages
