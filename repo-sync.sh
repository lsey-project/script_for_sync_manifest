#!/bin/bash

# Function to display status messages
status_message() {
    echo "========================================"
    echo "$1"
    echo "========================================"
}

# Repository directory for the kernel
REPO_DIR="android_kernel_repo"

# Check if the repository directory exists
if [ ! -d "$REPO_DIR" ]; then
    status_message "Repository directory for the kernel not found. Creating..."
    mkdir -p "$REPO_DIR"
fi

# Navigate to the repository directory
cd "$REPO_DIR" || {
    status_message "Error: Could not access the repository directory."
    exit 1
}

# Initialize the repository (if not already initialized)
if [ ! -d ".repo" ]; then
    status_message "Initializing the repository..."
    repo init -u https://android.googlesource.com/kernel/manifest -b master
fi

# Synchronize the repository
status_message "Synchronizing the repository..."
repo sync -j$(nproc) --force-sync

# Check if the synchronization was successful
if [ $? -eq 0 ]; then
    status_message "Repository synchronized successfully!"
else
    status_message "Error: Repository synchronization failed."
    exit 1
fi
