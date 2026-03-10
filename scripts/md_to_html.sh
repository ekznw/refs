#!/bin/bash
# uses pandoc to convert to html using a custom css style file.
pandoc readme.md \
    --css=ekznw.css \
    --standalone \
    -o readme.html
