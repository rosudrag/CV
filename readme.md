# LaTeX CV Repository

This repository contains the LaTeX source files for my professional curriculum vitae (CV/resume).

## Overview

This CV is built using LaTeX with a custom resume class (`res.cls`). The repository includes:

- `CV.tex`: The main LaTeX source file
- `res.cls`: The resume document class file
- `a4-mancs.sty`: Style file for A4 paper format
- Various auxiliary files generated during compilation

## Prerequisites

To compile this CV from source, you need to have a LaTeX distribution installed on your system. This README provides instructions for setting up MiKTeX and TeXworks on Windows.

## Installation Instructions for Windows

### Installing MiKTeX

MiKTeX is a LaTeX distribution for Windows that includes the necessary packages and tools to compile LaTeX documents.

1. Visit the official MiKTeX download page: [https://miktex.org/download](https://miktex.org/download)
2. Download the "MiKTeX Installer" for Windows
3. Run the installer and follow these steps:
   - Choose "Download MiKTeX"
   - Select "Complete MiKTeX"
   - Choose your preferred download source
   - Select an installation directory (the default is usually fine)
   - Set installation preferences:
     - Recommended: Select "Install missing packages on-the-fly: Yes"
   - Complete the installation process

### Installing TeXworks

TeXworks is a user-friendly editor and front-end for LaTeX.

1. TeXworks is usually included with MiKTeX. After installing MiKTeX, check if TeXworks is already installed by looking for it in your Start menu.

2. If TeXworks is not included, you can install it separately:
   - Visit the TeXworks download page: [https://www.tug.org/texworks/#Getting_TeXworks](https://www.tug.org/texworks/#Getting_TeXworks)
   - Download the latest Windows version
   - Run the installer and follow the instructions

## Compiling the CV

Once you have MiKTeX and TeXworks installed, you can compile the CV:

1. Open `CV.tex` in TeXworks
2. Select "pdfLaTeX" from the dropdown menu in the toolbar
3. Click the green "Play" button to compile the document
4. The resulting PDF will be generated as `CV.pdf`

## Troubleshooting

- If you encounter missing package errors, ensure that MiKTeX is set to install missing packages automatically
- For compilation errors, check the log file (`CV.log`) for details
- Make sure all files (especially `res.cls` and `a4-mancs.sty`) are in the same directory as `CV.tex`

## Version Control Notes

The repository includes a `.gitignore` file configured to exclude common LaTeX auxiliary files. The following files are excluded from version control:
- `.log` files
- `.gz` files
- Any file starting with "random"

## License

Please see the LICENSE file for details on the license for this repository.
