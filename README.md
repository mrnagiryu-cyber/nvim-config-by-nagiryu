"Neovim 60 feature configuration by Nagiryu. 15 color themes,
auto-close, file explorer, smart runner, and more." 
"Enjoy this configuration, you can also run it on Termux." 
"Created by MR. Nagiryu (15 years old) on Termux."
"Sunday, July 26, 2026"
# Neovim 60 Mega Ultra Features Configuration

This is a custom Neovim configuration created by **MR. Nagiryu**.
It combines the best features from modern editors: **VS Code, Helix, Emacs, and Kakoune**.
It runs on **Arch Linux ARM** (tested on Termux with 4GB RAM).

---

## 🚀 Key Features

### 1. 15 Color Themes & Transparency Mode
- Switch between 15 different color themes instantly (Red, Blue, Green, Purple, Solarized, Tokyo Night, Gruvbox, and more).
- Toggle transparency mode with a single key.

### 2. BlackArch Style Banner
- A unique ASCII art banner with "WELCOME TO NEOVIM MODIF MR.NAGIRYU" appears when Neovim starts.

### 3. File Explorer & Integrated Terminal
- File Explorer (Netrw) built-in sidebar.
- Built-in Terminal Split (Horizontal & Vertical).
- Floating Terminal mode.

### 4. Auto-Completion & Syntax Highlighting
- Smart auto-indentation for HTML, CSS, Python, C++, and Lua.
- Syntax highlighting and diagnostics icons.

### 5. Smart Code Runner (F5)
- Run Python, JavaScript, Shell Scripts, C++, C, and Lua code directly from Neovim using the `F5` key.

### 6. Productivity Shortcuts (Leader Key = Space)
- `Space + w` – Save file.
- `Space + q` – Quit file.
- `Space + bn` – Next buffer.
- `Space + bp` – Previous buffer.
- `Space + e` – Open File Explorer.
- `Space + te` – Open Terminal split.
- `Space + f` – Find file (Fuzzy finder).
- `Space + r` – Magic replace word (interactive search & replace).

### 7. Line & Text Manipulation
- `Space + j` / `Space + k` – Move lines up and down.
- `Space + dup` – Duplicate current line.
- `Space + clean` – Clean trailing whitespaces and blank lines.
- `Space + sa` – Select all content.
- `Space + cl` – Clean trailing spaces.

### 8. Git Integration
- Display current Git branch in the status bar.
- Word count and file stats in the status bar.

### 9. Snippets & Abbreviations
Type these keywords and press Space or Enter to generate full templates:
- `htmltpl` → Full HTML5 boilerplate.
- `pytpl` → Python script with `main()` function.
- `cpptpl` → C++ `iostream` template.
- `ctpl` → C `stdio` template.
- `bashtpl` → Bash script template.

### 10. Miscellaneous Features
- Timestamped backup (`Space + bak`).
- Toggle line numbers (`Space + nn`).
- Toggle text wrapping (`Space + tw`).
- Toggle mouse support (`Space + tm`).
- Toggle search highlighting (`Space + hl`).
- Center screen vertically (`Space + zz`).
- Create timestamped backup of files (`Space + bak`).

---

## 📦 Installation

1. Clone this repository to your Neovim config folder:
   ```bash
   git clone https://github.com/mrnagiryu-cyber/nvim-config-by-nagiryu.git ~/.config/nvim
   
