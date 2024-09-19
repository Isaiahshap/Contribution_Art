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
```

### 2. Make the Script Executable

You need to make the script executable so you can run it.

**macOS and Linux Users**
In your terminal, run:

```bash
chmod +x map_word.sh
```

**Windows Users**
If you're using Git Bash or WSL, you can run the same command:

```bash
chmod +x map_word.sh
```

### 3. Prepare the Dummy File

The script commits changes to a file named dummy_file.txt. Create this file:

```bash
touch dummy_file.txt
```

### 4. Commit Your Files

Add the script and dummy file to your repository and make your first commit.

```bash
git add map_word.sh dummy_file.txt
git commit -m "Add mapping script and dummy file"
```

### 5. Push Initial Commit to GitHub

Push your initial commit to GitHub.

```bash
git push origin main
```

If you haven't set up your remote repository yet, add the remote origin:

```bash
git remote add origin git@github.com:yourusername/yourrepo.git
git push -u origin main
```

Replace `yourusername` and `yourrepo` with your GitHub username and repository name.

### 6. Run the Script with Your Desired Word

Now, execute the script with the word you want to display on your contribution graph.

```bash
./map_word.sh YOURWORD
```

Replace `YOURWORD` with the word you want to map (e.g., HELLO).

### 7. Wait for GitHub to Update Your Contribution Graph

GitHub may take some time (up to 24 hours) to update your contribution graph. Check your GitHub profile to see the visual representation of your word.

## Important Notes

- **Git Configuration:** Ensure your Git username and email are configured correctly.

  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "youremail@example.com"
  ```

  The email address should match the one associated with your GitHub account.

- **SSH Authentication:** If you're using SSH, make sure your SSH keys are set up correctly.

- **Overwriting History:** This script rewrites your repository's history by adding commits in the past. Be cautious if you have an existing repository with important commits.

- **Force Push (if necessary):** If you encounter issues pushing due to conflicts, you may need to force push.

  ```bash
  git push --force origin main
  ```

  Warning: Force pushing can overwrite commits on the remote repository. Use with caution.

## Troubleshooting

- **Commits Not Appearing:**
  - It may take time for contributions to appear on your GitHub graph.
  - Ensure that the commits are pushed to GitHub and the commit dates are correct.
  - Verify that the email in your Git config matches your GitHub account.

- **Authentication Issues:**
  - If you're prompted for a username and password, set up SSH keys for authentication.
  - Alternatively, use a personal access token if you're using HTTPS.

- **Script Errors:**
  - Check that all FONT definitions are included.
  - Ensure you have execute permissions for the script.
  - Verify that you're running the script in the correct directory.

- **Windows Users:**
  - Use Git Bash or WSL, not Command Prompt or PowerShell.
  - Ensure Unix commands like `chmod` are recognized.

## Customization

- **Adjusting Commit Intensity:**
  By default, the script makes 5 commits for each active day. You can change this number by modifying the loop in the script:

  ```bash
  for i in {1..5}; do
      # Your commit commands
  done
  ```

- **Changing the Branch:**
  If you want to push to a different branch, modify the `git push` command at the end of the script.

- **Modifying the Font:**
  You can customize the font by editing the FONT array in the script.

## Disclaimer

- **Use Responsibly:** Altering commit history and making numerous commits can have implications. Use this script responsibly and in accordance with GitHub's terms of service.

- **GitHub Policies:** Ensure your use of this script complies with GitHub's policies on usage and automation.

- **Personal Repository Recommended:** It's recommended to use a new, personal repository for this script to avoid impacting important project histories.

## License

This project is licensed under the MIT License.

Enjoy creating custom patterns on your GitHub contribution graph!

## Additional Resources

- [GitHub SSH Key Setup: Connecting to GitHub with SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- [Download Git](https://git-scm.com/downloads)
- [Markdown Guide](https://www.markdownguide.org/)

## Contact

If you have any questions or need assistance, feel free to reach out by opening an issue in the repository or contacting me directly.
