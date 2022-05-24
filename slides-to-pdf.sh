#!/bin/bash

latexmk -norc -r latexmk-ci-config

mkdir public || rm public/slides.pdf public/index.html

cp slides.pdf public/

# generate simple index file
cd public
html_list_of_pdfs () {
    ls *.pdf | while read FILE
    do
	echo "  <li><a href='$FILE'>$FILE</a></li>"
    done
}

cat <<EOF >index.html
<!DOCTYPE html>
<html lang=en><head><meta charset=utf-8>
<title>Talk file</title>
</head>
<body>
<h1>List of lecture files</h1>
<ul>
$(html_list_of_pdfs)
</ul>
EOF
