# 🚀 Cozy Neovim Configuration

A minimalist yet powerful Neovim configuration focused on maximizing functionality while keeping things simple and clean.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

## ✨ Features

- 🎯 Minimalist plugin setup with maximum functionality
- 🔍 Powerful fuzzy finding with Telescope
- 📁 Intuitive file explorer
- ⚡ Fast and responsive
- 🎨 Clean and modern UI
- 🛠️ Easy to customize and extend

## 📋 Prerequisites

Before installing, ensure you have the following installed on your system:

### Required

- **Neovim** (v0.9.0 or higher) - [Installation Guide](https://neovim.io/doc/install/)
  ```bash
  # Check your version
  nvim --version
  ```

- **Git** - [Installation Guide](https://git-scm.com/install/)
  ```bash
  # Verify installation
  git --version
  ```

- **Ripgrep** - Required for fuzzy finding - [GitHub](https://github.com/BurntSushi/ripgrep)
  ```bash
  # Verify installation
  rg --version
  ```

### Recommended

- **Nerd Font** - For icons and symbols - [Download](https://www.nerdfonts.com/font-downloads)
  - Recommended fonts: `JetBrainsMono Nerd Font`, `FiraCode Nerd Font`, or `Hack Nerd Font`
  - After installation, configure your terminal to use the Nerd Font

## 🔧 Installation

### 1. Backup Your Current Configuration

It's important to backup your existing Neovim configuration before proceeding.

#### Windows (PowerShell)

```powershell
# Backup configuration
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# Backup data (optional but recommended)
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

#### Linux / macOS

```bash
# Backup configuration
mv ~/.config/nvim{,.bak}

# Backup data (optional but recommended)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### 2. Clone the Configuration

#### Windows (PowerShell)

```powershell
git clone https://github.com/afrandormd/MyNvim.git $env:LOCALAPPDATA\nvim
```

#### Linux / macOS

```bash
git clone https://github.com/afrandormd/MyNvim.git ~/.config/nvim
```

### 3. Launch Neovim

```bash
nvim
```

On first launch, Neovim will automatically install all required plugins. This may take a few moments.

## ⌨️ Keymaps

> **Note:** The `<leader>` key is typically set to `Space` by default.

### General

| Keymap | Mode   | Description                    |
|--------|--------|--------------------------------|
| `jj`   | Insert | Exit insert mode (quick escape)|

### File Navigation (Telescope)

| Keymap       | Mode   | Description                      |
|--------------|--------|----------------------------------|
| `<leader>ff` | Normal | Find files in current directory  |
| `<leader>fg` | Normal | Live grep (search in files)      |
| `<leader>fb` | Normal | List open buffers                |
| `<leader>fh` | Normal | Search help tags                 |

### File Explorer

| Keymap      | Mode   | Description          |
|-------------|--------|----------------------|
| `<leader>e` | Normal | Toggle file explorer |

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── config/          # General configuration
│   ├── plugins/         # Plugin specifications
│   └── keymaps/         # Keymap definitions
└── README.md
```

## 🎨 Customization

### Modifying Keymaps

To customize keymaps, edit the keymap files in `lua/keymaps/` or create your own in `lua/config/`.

### Adding Plugins

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. To add new plugins, create a new file in `lua/plugins/` with your plugin specification.

Example:
```lua
return {
  "plugin-author/plugin-name",
  config = function()
    -- Plugin configuration
  end,
}
```

## 🐛 Troubleshooting

### Plugins not installing

If plugins fail to install on first launch:

```bash
# Inside Neovim
:Lazy sync
```

### Icons not showing

Ensure you have a Nerd Font installed and your terminal is configured to use it.

### Performance issues

Try clearing the cache:

```bash
# Linux/macOS
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Windows (PowerShell)
Remove-Item $env:LOCALAPPDATA\nvim-data -Recurse -Force
```

Then restart Neovim to reinstall plugins.

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation

## 📝 License

This configuration is open source and available under the MIT License.

## 🙏 Acknowledgments

- Built with [lazy.nvim](https://github.com/folke/lazy.nvim)
- Powered by [Neovim](https://neovim.io/)
- Inspired by the Neovim community

---

