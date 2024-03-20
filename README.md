
# Documentation Merge Script

This script is designed to facilitate the consolidation of markdown documentation into a single text file for easy retrieval and inclusion in vector databases. It is particularly useful for managing up-to-date documentation in a structured and searchable format.

## How It Works

The script performs the following actions:

1. Searches the current directory and its subdirectories for markdown (`.md`) files.
2. Copies these files, converting them to text (`.txt`) format, and places them in a new directory named `converted`.
3. Merges all text files in the `converted` directory into a single file named `merged.txt`, sorting them first numerically by any leading number in the filename, then alphabetically.

## Usage

To use this script:

1. Download the desired GitHub project documentation to a local directory.
2. Place this script in the root of the documentation directory.
3. Run the script to process and merge the documentation files.

### Making the Script Executable

Before running the script, you must make it executable. Open a terminal in the directory containing the script and run:

```bash
chmod +x md-convert-to-txt.sh
```

Replace `script-name.sh` with the actual name of your script file.

### Execution

To execute the script, navigate to the directory where the script is located and run:

```bash
./md-convert-to-txt.sh
```

## Disclaimer

**Use this script at your own risk.** Running scripts from the internet can cause harm to your system if not carefully inspected and understood. Ensure you understand what each part of the script does before execution. It is recommended to backup your files before using the script to prevent unintended data loss or modification.

## License

This script is provided "as is", without warranty of any kind. The user assumes all risks associated with its use.


