# ===============================
# Git Automation Makefile
# ===============================

REPO_URL = https://github.com/USERNAME/REPOSITORY.git
BRANCH = main
WHAT ?= "update"

# Initialize git repository
init:
	git init
	git branch -M $(BRANCH)
	git remote add origin $(REPO_URL)

# Check git status
status:
	git status

# Add all files
add:
	git add .

# Commit changes
commit:
	git commit -m $(WHAT)

# Push to GitHub
push:
	git push -u origin $(BRANCH)

# Pull latest changes
pull:
	git pull origin $(BRANCH)

# Full workflow (add + commit + push)
deploy:
	git add .
	git commit -m $(WHAT)
	git push origin $(BRANCH)

# Show remotes
remote:
	git remote -v
