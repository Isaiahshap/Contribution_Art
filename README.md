# GitHub Contribution Art Script

This script allows you to map a word onto your GitHub contribution graph by making commits with past dates. It creates a visual representation of the word on your contribution graph without the need for scheduled tasks.

## Features

- **Custom Word Mapping:** Input any word (using uppercase letters A-Z) to create custom patterns on your GitHub contribution graph.
- **Immediate Execution:** Makes all necessary commits immediately with past dates.
- **Automated Commits:** Commits are made on specific past dates to form the desired word.

---

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Git Installed:** Git must be installed on your computer. You can download it from [git-scm.com](https://git-scm.com/downloads).
- **GitHub Account:** You have a GitHub account. If not, you can sign up at [github.com](https://github.com/).
- **GitHub Repository:** You have a GitHub repository where you can push changes.
- **SSH Keys (Recommended):** Set up SSH keys for authentication with GitHub to avoid entering your username and password each time you push changes.
- **Bash Shell:** The script is written in Bash. You'll need a Unix-like environment to run it:
  - **macOS and Linux Users:** Use the Terminal application.
  - **Windows Users:** Use Git Bash (comes with Git for Windows) or Windows Subsystem for Linux (WSL).

---

## Getting Started

Follow these instructions to set up the script and map your desired word onto your GitHub contribution graph.

### 1. Clone Your Repository

Open your terminal or command prompt and clone your GitHub repository to your local machine, or navigate to your existing local repository.

```bash
# Replace with your actual repository URL
git clone git@github.com:yourusername/yourrepo.git
cd yourrepo

