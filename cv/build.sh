#!/bin/sh
# Genera las dos versiones del CV a partir de cv.typ
set -e
cd "$(dirname "$0")"
typst compile --font-path fonts --input lang=es cv.typ CV_ManuelLiebana_ES.pdf
typst compile --font-path fonts --input lang=en cv.typ CV_ManuelLiebana_EN.pdf
echo "CV generado: CV_ManuelLiebana_ES.pdf y CV_ManuelLiebana_EN.pdf"
