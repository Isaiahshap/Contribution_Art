# GitHub Contribution Art Script

This script maps a given word onto your GitHub contribution graph by making commits with past dates. It creates a visual representation of the word on your contribution graph without the need for scheduled tasks.

## Features

- **Custom Word Mapping:** Input any word (using uppercase letters A-Z) to create custom patterns on your GitHub contribution graph.
- **Immediate Execution:** Makes all necessary commits immediately with past dates, eliminating the need for scheduled tasks.
- **Automated Commits:** Commits are made for specific past dates to form the desired word.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation and Setup](#installation-and-setup)
  - [1. Clone Your Repository](#1-clone-your-repository)
  - [2. Create the `map_word.sh` Script](#2-create-the-map_wordsh-script)
  - [3. Make the Script Executable](#3-make-the-script-executable)
  - [4. Prepare the Dummy File](#4-prepare-the-dummy-file)
  - [5. Commit Your Files](#5-commit-your-files)
  - [6. Run the Script with Your Desired Word](#6-run-the-script-with-your-desired-word)
  - [7. Verify Your Contribution Graph](#7-verify-your-contribution-graph)
- [Detailed Instructions by Operating System](#detailed-instructions-by-operating-system)
  - [Windows Users](#windows-users)
    - [Option 1: Using Git Bash](#option-1-using-git-bash)
    - [Option 2: Using Windows Subsystem for Linux (WSL)](#option-2-using-windows-subsystem-for-linux-wsl)
  - [macOS and Linux Users](#macos-and-linux-users)
- [How It Works](#how-it-works)
- [Important Notes](#important-notes)
- [Usage Summary](#usage-summary)
- [Troubleshooting](#troubleshooting)
- [Customization](#customization)
- [Disclaimer](#disclaimer)
- [License](#license)

---

## Prerequisites

- **Git:** Ensure Git is installed and configured on your machine.
- **GitHub Account:** You need a GitHub account.
- **GitHub Repository:** A repository where you can push changes.
- **SSH Keys (Recommended):** Set up SSH keys for passwordless GitHub authentication to allow automated pushes.
- **Bash Shell:** The script is written in Bash; ensure you are running it in a Unix-like environment (Linux, macOS, or Windows with Git Bash or WSL).

---

## Installation and Setup

### 1. Clone Your Repository

Clone your GitHub repository or navigate to your existing local repository:

```bash
git clone git@github.com:yourusername/yourrepo.git
cd yourrepo


Open a terminal in your project directory and initialize a new Git repository:

```bash
git init
