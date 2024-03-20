#!/bin/bash

# Use the current working directory as the starting directory
start_dir=$(pwd)
target_dir="${start_dir}/converted"

# Create the target directory if it doesn't exist
mkdir -p "$target_dir"

# Find and process .md files
find "$start_dir" -type f -name "*.md" | while read file; do
    # Rename the .md extension to .txt in the new file name
    new_file="${file%.md}.txt"
    cp "$file" "$new_file"  # Copy and rename the file to .txt

    # Move the new .txt file to the target directory
    mv "$new_file" "$target_dir"
done

echo "Conversion completed. Files are copied to $target_dir."

# Define the directory containing the .txt files
converted_dir="$target_dir"
output_file="${start_dir}/merged.txt"

# Navigate to the converted directory
cd "$converted_dir"

# Sort files numerically by the number at the start of the filename and merge them
ls | grep '^[0-9]' | sort -n -t '.' -k 1 | while read file; do
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"  # Adds a newline between files content
done

# Now process the remaining files that don't start with a number, sorted alphabetically
ls | grep -v '^[0-9]' | sort | while read file; do
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"  # Adds a newline between files content
done

echo "Files have been merged into $output_file"

