#!/bin/bash


read_matrix() {
    local file="$1"
    local matrix=()
    
    while IFS= read -r line; do
        row=()
        for value in $line; do
            row+=("$value")
        done
        matrix+=("${row[@]}")
    done < "$file"
    
    echo "${matrix[@]}"
}


transpose_matrix() {
    local matrix=("$@")
    local rows=${#matrix[@]}
    local columns=${#matrix[0]}
    
    for ((i = 0; i < columns; i++)); do
        for ((j = 0; j < rows; j++)); do
            echo -n "${matrix[$j]:$i:1} "
        done
        echo
    done
}


read -p "Enter the file path: " file_path


matrix=$(read_matrix "$file_path")
transposed_matrix=$(transpose_matrix "${matrix[@]}")


echo "Transposed Matrix:"
echo "$transposed_matrix"

