#!/bin/bash

# Set the directory to start the search from
search_dir="/smb/library/roms"
# Use find and grep to search for files NOT containing "Europe" or "Japan" in their name
found_files=()

while IFS= read -r file; do
    # Check if any files were found
    if [ -n "$file" ]; then
        found_files+=("$file")
        echo "Found file to delete: $file"
    else
        echo "No files found that don't contain 'Europe' or 'Japan' in their name."
    fi
done < <(find "$search_dir" -type f \( -name "*(Demo)*" -o -name "*(Kiosk)*" -o -name "*(Beta)*" -o -name "*(Proto)*" -o -name "*(Aftermarket)*"  -o -name "*Demo *" -o -name "*(Unl)*" -o -name "*(Proto 2)*"  -o -name "*Action Replay*" -o -name "*Game Pack*" -o -name "*Games in One*" -o -name "*Poker*" -o -name "*poker*" \))

# Check if any files were found
if [ "${#found_files[@]}" -gt 0 ]; then
    # Ask for confirmation before deletion
    read -p "Do you want to delete these files? (y/n): " confirm
    if [ "$confirm" == "y" ]; then
        # Delete the files
        echo "Deleting files..."
        rm -f "${found_files[@]}"
        echo "Files deleted successfully."
    else
        echo "Files were not deleted."
    fi
fi
