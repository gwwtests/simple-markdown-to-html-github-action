#!/bin/bash

set -e

set -x # verbose for debugging

for file in $(find . -name '*.md' -o -name '*.markdown'); do
    html_file="${file%.*}.html"
    if [ ! -f "$html_file" ]; then
        pandoc "$file" --from=gfm -t html -o "$html_file"
    fi
    if [ "$(basename "$file")" == "README.md" ] && [ ! -f "$(dirname "$file")/index.html" ]; then
        cp "$html_file" "$(dirname "$file")/index.html"
    fi
done
