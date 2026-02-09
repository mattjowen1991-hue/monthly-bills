# 🚀 Quick Reference - Monthly Bills Tracker

## Most Common Commands

### Update and Deploy
```bash
./deploy.sh
```
That's it! The script handles everything.

---

## Manual Git Workflow (if you prefer)

### 1️⃣ Check what changed
```bash
git status
```

### 2️⃣ Add changes
```bash
git add .
```

### 3️⃣ Commit changes
```bash
git commit -m "Updated bills tracker"
```

### 4️⃣ Push to GitHub
```bash
git push origin main
```

---

## File Reference

| File | Purpose |
|------|---------|
| `index.html` | The actual app - edit this to change functionality |
| `README.md` | Project documentation |
| `SETUP.md` | Detailed setup instructions |
| `deploy.sh` | Automated deployment script |
| `QUICKREF.md` | This file |

---

## Access Your App

**Live URL:** https://mattjowen1991-hue.github.io/monthly-bills/

**Local Testing:** Just open `index.html` in your browser

---

## Emergency Commands

### Undo last commit (keep changes)
```bash
git reset --soft HEAD~1
```

### See commit history
```bash
git log --oneline
```

### Discard ALL local changes (⚠️ CAREFUL!)
```bash
git reset --hard HEAD
```

---

## Need Help?

1. Check `SETUP.md` for detailed instructions
2. Check `README.md` for app documentation
3. Google "git [your issue]"
