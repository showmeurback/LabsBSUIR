#!/bin/bash

if [ $# - ne 2 ]; then
echo "Usage: $0 <search_string> <directory>"
exit 1
fi

seatch_string=$1
directory=$2

if [ ! -d "$directory" ]; then
echo "Directory '$directory' does not exist."
exit 1
fi

echo "Searching for '$search_string' in '$directory'"

find "$directory" -type f 2>/dev/null | while read -r file; do
if grep -q "$search_string" "$file" 2>/dev/null; then
file_size=$(stat -c%s "$file")
echo "File: $file, size: $file_size bytes"
fi
done