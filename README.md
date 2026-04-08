# Nvim_Config

Tyler Tan's personal Neovim configuration — a minimal, C/C++-focused setup.

## Philosophy

Keep it simple. No bloated plugin suites, no kitchen-sink distributions. Just a lean config that gets out of your way and lets you write code.

## Structure

```
├── init.lua                  # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua          # Plugin manager bootstrap (lazy.nvim)
│   │   ├── options.lua       # Vim options
│   │   ├── keymaps.lua       # Key mappings
│   │   └── autocmds.lua      # Autocommands
│   └── plugins/
│       ├── lspconfig.lua     # LSP configuration
│       ├── clangd-extensions.lua
│       ├── blink.lua         # Completion
│       ├── treesitter.lua
│       ├── telescope.lua
│       ├── which-key.lua
│       ├── gitsigns.lua
│       ├── lazygit.lua
│       ├── yazi.lua
│       ├── snacks.lua
│       ├── autopairs.lua
│       ├── catppuccin.lua    # Colorscheme
│       └── render-markdown.lua
└── lazy-lock.json
```

## Requirements

- Neovim >= 0.10
- A C/C++ toolchain (clangd for LSP)
- [lazy.nvim](https://github.com/folke/lazy.nvim) (auto-installed on first launch)
