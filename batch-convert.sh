#!/bin/bash
cd /convert/
find ./ -name '*.heic' -or -name '*.HEIC'| while read i; do
    [ -f "${i}" ] || break
    if [ ! -f "${i%.*}".jpg ]; then
        echo "$i -> ${i%.*}.jpg"
        /tifig/build/tifig -v -p "$i" "${i%.*}".jpg
        touch -r "$i" "${i%.*}".jpg
    else
        echo "${i%.*}.jpg already exists"
    fi
done
