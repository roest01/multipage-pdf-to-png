#!/usr/bin/env bash
mkdir -p tmp
for fullName in *.pdf; do
    plainName="${fullName/.pdf/}"

    printf "==== ====\n"
    printf "==== split up and convert $fullName \n";
    printf "==== ====\n\n"

    pdftk "$fullName" burst output "tmp/$plainName-%02d.pdf";
    ls tmp/*.pdf | xargs -I '{}' sips -s format png '{}' --out '{}'.png

    printf "\n\n";
    printf "==== ====\n"
    printf "==== merge to $plainName.png \n"
    printf "==== ====\n\n"

    convert -verbose -append tmp/*.png "$plainName.png"

    printf "\n\n";
    printf "==== ====\n"
    printf "==== crop whitespace \n"
    printf "==== ====\n\n"
    convert -trim "$plainName.png" "${plainName}.png"
    rm tmp/* #cleanup for next loop
done
rm -R tmp