# PDF Processing Container

## Overview

This repository contains a Docker container environment used for processing PDF files. The main functionality involves using `pdfcrop` and `pdftk` tools to extract each page from a PDF. By default, `pdfcrop` is set to automatically crop out any excess whitespace from each page. However, manual adjustment of margins is also possible.

## Features

- **PDF Splitting**: Use `pdftk` to split a single PDF file into multiple single-page PDF files.
- **Automatic Cropping**: By default, `pdfcrop` is used to automatically crop out excess whitespace from each page. Margins can be manually adjusted.

## How to Use

### Preparation

1. Ensure Docker and VS Code are installed on your machine.
2. Install the Remote - Containers extension in VS Code.

### Setting Up the Project

1. Clone this repository to your local machine.
2. Open the repository folder in VS Code.
3. Open the project in a container using the Remote - Containers extension in VS Code.

### Running the Script

1. Place the PDF file you wish to process in the `data` folder.
2. Adjust the `margins` in the `process_pdf.sh` script if manual cropping is required.
3. Run `./scripts/process_pdf.sh` in the terminal of VS Code.
4. The processed PDF files will be saved in the `output` folder.

## Structure

- `.devcontainer`: Contains Docker configuration files.
- `scripts`: Holds the scripts for processing PDF files.
- `data`: Place the original PDF files here.
- `output`: Processed PDF files are stored here.

## Contribution

Feel free to contribute to the project through Pull Requests or Issues!

## License

[MIT License](LICENSE)
