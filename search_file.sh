#!/bin/bash
dir="$1"
filename="$2"

search_file() {
    for item in "$1"/*
    do
        if [ -d "$item" ]
        then
            search_file "$item" "$2"
        elif [ -f "$item" ]
        then
            if [ "$(basename "$item")" = "$2" ]
            then
                echo "File found: $item"
            fi
        fi

    done
}

search_file "$dir" "$filename"
