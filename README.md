# Monthly Bills Tracker

A beautiful, mobile-friendly web app for tracking your monthly bills and expenses.

![Monthly Bills Tracker](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## 🚀 Live Demo

Visit: [https://mattjowen1991-hue.github.io/monthly-bills/](https://mattjowen1991-hue.github.io/monthly-bills/)

## ✨ Features

- 📱 **Mobile-Optimized** - Fully responsive design that works great on phones and tablets
- 💾 **Persistent Storage** - Your data automatically saves to your browser's localStorage
- 📊 **Live Calculations** - Automatically calculates totals, differences, and net balance
- ✏️ **Easy Editing** - Click edit to update projected/actual amounts and payment dates
- ➕ **Add New Bills** - Create bills in existing or new categories
- 🗑️ **Delete Bills** - Remove bills you no longer need
- 🎨 **Beautiful Design** - Dark theme with purple gradients and elegant typography
- 🔐 **Private** - All data stays on your device

## 📱 Usage

### Quick Start
1. Visit the live demo link above
2. Your bills are pre-loaded from your spreadsheet
3. Start editing amounts, adding new bills, or deleting old ones
4. All changes save automatically!

### Add to Home Screen (Mobile)
1. Open the app in your mobile browser
2. Tap the share/menu button
3. Select "Add to Home Screen"
4. Now you have a quick-access icon!

## 🛠️ Development

This is a standalone HTML file with no build process required. It uses:
- React 18 (via CDN)
- Tailwind CSS (via CDN)
- localStorage API for data persistence

### Project Structure
```
monthly-bills/
├── index.html          # Main application file
├── README.md          # This file
└── .gitignore         # Git ignore rules
```

### Making Changes

1. Edit `index.html` directly
2. Test by opening it in a browser
3. Commit and push to GitHub
4. Changes go live automatically via GitHub Pages

## 📊 Data Storage

- Bills data is stored in `localStorage` under the key `bills-data`
- Income data is stored under the key `income-data`
- Data persists across sessions
- Clearing browser data will reset the app

## 🔄 Updating the App

To update your bills tracker:

1. Download the latest `index.html`
2. Replace the file in your repo
3. Commit and push:
   ```bash
   git add index.html
   git commit -m "Update bills tracker"
   git push origin main
   ```

## 🌐 Hosting

Currently hosted on GitHub Pages. To set up:

1. Go to your repo settings
2. Navigate to "Pages"
3. Set source to "main" branch
4. Your app will be live at `https://mattjowen1991-hue.github.io/monthly-bills/`

## 📝 License

MIT License - feel free to use and modify as needed!

## 🤝 Contributing

This is a personal project, but feel free to fork and customize for your own use!

## 💡 Tips

- **Backup your data**: Occasionally export your bills list by copying the localStorage data
- **Multiple devices**: Data doesn't sync between devices - it's stored per-browser
- **Privacy**: No data leaves your device - it's all client-side
- **Updates**: When the app updates, your data is preserved
