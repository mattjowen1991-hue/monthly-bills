# Setup Guide for Monthly Bills Tracker

## 📦 Initial Setup

If you haven't already pushed this to GitHub, follow these steps:

### 1. Initialize Git Repository
```bash
cd /path/to/monthly-bills
git init
```

### 2. Add Remote Repository
```bash
git remote add origin https://github.com/mattjowen1991-hue/monthly-bills.git
```

### 3. Initial Commit and Push
```bash
git add .
git commit -m "Initial commit: Monthly Bills Tracker"
git branch -M main
git push -u origin main
```

### 4. Enable GitHub Pages
1. Go to https://github.com/mattjowen1991-hue/monthly-bills/settings/pages
2. Under "Source", select "Deploy from a branch"
3. Select branch: `main` and folder: `/ (root)`
4. Click Save
5. Your site will be published at: https://mattjowen1991-hue.github.io/monthly-bills/

## 🔄 Updating Your App

### Method 1: Using the Deploy Script (Recommended)
```bash
cd /path/to/monthly-bills
./deploy.sh
```

The script will:
- Show you what changed
- Ask for a commit message
- Commit and push everything automatically

### Method 2: Manual Git Commands
```bash
# See what changed
git status

# Stage all changes
git add .

# Commit with a message
git commit -m "Your update message here"

# Push to GitHub
git push origin main
```

## 📁 Project Structure

```
monthly-bills/
├── index.html       # Main app file (this is what users see)
├── README.md        # Project documentation
├── SETUP.md         # This file
├── deploy.sh        # Deployment script
└── .gitignore       # Files to ignore in Git
```

## 🛠️ Making Changes

### To update the app functionality:
1. Edit `index.html`
2. Test it by opening in your browser
3. Run `./deploy.sh` to push changes

### To update documentation:
1. Edit `README.md`
2. Run `./deploy.sh` to push changes

## 💡 Tips

### Quick Git Commands Reference
```bash
# Check status
git status

# See what changed
git diff

# View commit history
git log --oneline

# Undo last commit (keeping changes)
git reset --soft HEAD~1

# Discard all local changes (careful!)
git reset --hard HEAD
```

### Testing Changes Locally
Simply double-click `index.html` or open it in your browser before pushing.

### Backing Up Your Data
Your bills data is in localStorage. To backup:
1. Open browser DevTools (F12)
2. Go to Application > Local Storage
3. Copy the values for `bills-data` and `income-data`
4. Save to a text file

## 🆘 Troubleshooting

### "Permission denied" when running deploy.sh
```bash
chmod +x deploy.sh
```

### Changes not showing on GitHub Pages
- Wait 1-2 minutes for GitHub to rebuild
- Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)
- Check GitHub Actions tab for build status

### Lost your data
If you cleared localStorage:
1. The app will reload with the default bills from your spreadsheet
2. Or restore from a backup if you made one

## 📞 Support

For issues or questions about this setup, check:
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Git Documentation](https://git-scm.com/doc)
