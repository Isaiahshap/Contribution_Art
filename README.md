# GitHub Contribution Art Script

This script maps a given word onto your GitHub contribution graph by making commits with past dates. It creates a visual representation of the word on your contribution graph without the need for a cron job.

## Features

- **Custom Word Mapping:** Input any word (using uppercase letters A-Z) to create custom patterns on your GitHub contribution graph.
- **Immediate Execution:** Makes all necessary commits immediately with past dates, eliminating the need for scheduled tasks.
- **Automated Commits:** Commits are made for specific past dates to form the desired word.

## Prerequisites

- **Git:** Ensure Git is installed and configured on your machine.
- **GitHub Account:** You need a GitHub account.
- **GitHub Repository:** A repository where you can push changes.
- **SSH Keys (Recommended):** Set up SSH keys for passwordless GitHub authentication to allow automated pushes.
- **Bash Shell:** The script is written in Bash; ensure you are running it in a Unix-like environment (Linux, macOS, or Windows Subsystem for Linux).

## Installation and Setup

### 1. Install Visual Studio Code (Optional)

If you prefer to use VSCode for editing, you can download it from [here](https://code.visualstudio.com/).

### 2. Create a New Project Folder

Choose a location on your computer and create a new folder for your project, e.g., `github-contribution-art`.

### 3. Open the Project Folder in VSCode (Optional)

- Open VSCode.
- Click on **File** > **Open Folder**.
- Navigate to your project folder and open it.

### 4. Initialize a Git Repository

Open a terminal in your project directory and initialize a new Git repository:

```bash
git init
