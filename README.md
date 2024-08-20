# Android Kernel Build Script

Copyright© Lseything (Alex)

## Overview

This script, `repo-sync.sh`, is designed to assist in the synchronization of the repository for building the Android kernel. It does not include the installation of additional packages; its primary function is to ensure that the repository is up-to-date and ready for the build process.

## Prerequisites

Before using this script, ensure that you have the following:

- **Repo Tool**: The `repo` tool is essential for managing Android source code checkouts. You can install it by following the instructions on the [official Android source page](https://source.android.com/setup/develop).
- **Dependencies**: While this script does not handle dependency installation, building the Android kernel typically requires a variety of development tools and libraries. Ensure you have these installed on your system.

## Usage

1. **Download the Script**:
   - Save the `repo-sync.sh` script to your preferred directory.

2. **Make the Script Executable**:
   - Run the following command to make the script executable:
     ```sh
     chmod +x repo-sync.sh
     ```

3. **Run the Script**:
   - Execute the script by running:
     ```sh
     ./repo-sync.sh
     ```

## Script Functionality

The `repo-sync.sh` script performs the following steps:

1. **Check for Repository Directory**:
   - It checks if the repository directory (`android_kernel_repo`) exists. If not, it creates the directory.

2. **Navigate to Repository Directory**:
   - The script navigates to the repository directory.

3. **Initialize the Repository**:
   - If the repository is not already initialized, it initializes the repository using the specified manifest URL and branch.

4. **Synchronize the Repository**:
   - The script synchronizes the repository, ensuring that all the latest changes are pulled down.

5. **Status Messages**:
   - Throughout the process, the script provides status messages to inform you of its progress and any potential errors.

## Notes

- **Error Handling**: The script includes basic error handling to ensure that it stops and reports an error if any critical step fails.
- **Parallel Processing**: The synchronization step uses parallel processing (`-j$(nproc)`) to speed up the process, utilizing all available CPU cores.

## Support

For any issues or questions regarding this script, please open an issue in the repository or contact the maintainer directly.

## License

This script is released under the [Apache License](LICENSE).
