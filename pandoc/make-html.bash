#!/bin/bash

LABS_SRC_DIR=../md
RESDIR=resources
LABS_HTML_DIR=../html
MARK=$(dirname $0)/gen-docs-timestamp

GHCSS1=${RESDIR}/simple.css
#GHCSS2=${RESDIR}/reveal.min.css
GHCSS2=${RESDIR}/fonts.css
GHCSS3=${RESDIR}/zenburn.css
HEADER="--include-before-body=$(dirname $0)/${RESDIR}/header.html"
FOOTER="--include-after-body=$(dirname $0)/${RESDIR}/footer.html"
HIGHLIGHT="--highlight-style zenburn"
HTML_OPTIONS="--from=markdown --to=html5 --standalone --self-contained"
TEMPLATE_OPTIONS="$HIGHLIGHT --css $GHCSS1 --css $GHCSS2 --css $GHCSS3 $HEADER $FOOTER"

mkdir -p ${LABS_HTML_DIR}

for folder in ${LABS_SRC_DIR}
do
    for mdfile in $(find $folder -name "*.md" -anewer ${MARK})
    do
	echo $mdfile
	pandoc $mdfile  $HTML_OPTIONS $TEMPLATE_OPTIONS  --output=${LABS_HTML_DIR}/$(basename $mdfile .md).html
    done
done

touch ${MARK}
