#!/bin/bash

INPUT="$1"
OUTPUT="$2"

WORKDIR=$(mktemp -d)

echo "Converting PDF to images..."
pdftoppm -r 400 -png "$INPUT" "$WORKDIR/page"

echo "Enhancing images..."
for f in "$WORKDIR"/*.png
do
    convert "$f" \
        -colorspace Gray \
        -contrast-stretch 3%x3% \
        -sharpen 0x1.0 \
        -deskew 40% \
        -normalize \
        "$f"
done

echo "Rebuilding PDF..."
img2pdf "$WORKDIR"/*.png -o "$WORKDIR/cleaned.pdf"

echo "Running OCR..."
ocrmypdf \
    --deskew \
    --rotate-pages \
    --clean-final \
    -l eng \
    "$WORKDIR/cleaned.pdf" \
    "$OUTPUT"

rm -rf "$WORKDIR"

echo "Done: $OUTPUT"
