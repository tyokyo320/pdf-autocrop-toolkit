#!/bin/bash

# Define input and output directories
input_dir="/workspaces/pdf-autocrop-toolkit/data"
output_dir="/workspaces/pdf-autocrop-toolkit/output"
mkdir -p "$output_dir"

# PDF file name (without extension)
pdf_name="assets"

# Split the PDF into single-page files
pdftk "$input_dir/$pdf_name.pdf" burst output "$output_dir/${pdf_name}_%02d.pdf"

# Manually set the margins for cropping (left bottom right top)
# Default is set to "0 0 0 0" for automatic removal of all whitespace
# You can adjust these values as needed
margins="0 0 0 0"

# Loop through each PDF file
for pdf_file in "$output_dir/${pdf_name}"_*.pdf; do
    # Crop the PDF file using pdfcrop with manually set margins
    pdfcrop --margins "$margins" "$pdf_file" "$pdf_file"
done

echo "Processing complete! Cropped files are located in $output_dir"
