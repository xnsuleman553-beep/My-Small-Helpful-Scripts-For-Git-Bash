# My Small Helpful Scripts for Git Bash and Python

Welcome to my repository! This is a collection of simple, everyday utility scripts designed to speed up tasks, automate tedious Git commands, and clean up workspace files using Git Bash and Python.

---

## 🚀 Features & Scripts

### 1. Git Quick-Commit Tool (`quick_commit.sh`)
A smart shell script that automates the standard `git add`, `git commit`, and `git push` flow while saving you from empty commits.
* **Smart Checking:** It automatically runs a check before committing. If your workspace has no changes, it stops and warns you.
* **Auto-Push:** Once you type your message, it saves the variables, commits the code, and pushes directly to your repository.

### 2. Line Ending Sanitizer (`fix_lines.py`)
A background Python script to stop Git from throwing annoying `LF will be replaced by CRLF` warnings by automatically standardizing your script files.

---

## 📦 Project Structure

```text
my-small-helpful-scripts/
├── README.md                  # This file
├── Auto-Commit-And-Push.sh    # The Git automation shell script
└── script-for-folders.sh      # A Script That Makes Folders For Project