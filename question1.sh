#!/bin/bash


if [ -z "$1" ]; then
  echo "Please provide the Current Working Directory as an argument."
  exit 1
fi


current_dir="$1"
modified_dir="${current_dir}/Modified"
mkdir -p "$modified_dir"

# Find all files with a ".txt" extension and copy them to the "Modified" directory with the extension changed to ".bak"
find "$current_dir" -type f -name "*.txt" -exec sh -c '
  for file do
    cp "$file" "${modified_dir}/$(basename "${file%.txt}").bak"
  done
' sh {} +
echo"good bye."
