#!/bin/sh
# rassembler.sh - join multiple edited parts into a unified DELA dictionary
# License: 3-clause BSD (see https://opensource.org/licenses/BSD-3-Clause)
# Author: Hubert Tournier

main()
{
    echo "word,lemme,category" > dict-fr-AU-DELA.csv
    cat mots/* verbes/* \
    | sort \
    | sed	-e "s/\([,.]\)/\\\\\1/g" \
            -e "s/|/,/" \
            -e "s/|/,/" \
    >> dict-fr-AU-DELA.csv
}

main
