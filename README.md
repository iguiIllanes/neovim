# Neovim config

<!--toc:start-->

- [Neovim config](#neovim-config)
  - [Remove old configuration](#remove-old-configuration)
  - [Usage](#usage)
  - [Installation](#installation)
    - [1. Install neovim](#1-install-neovim)
      - [On MacOS:](#on-macos)
      - [On Ubuntu/Debian:](#on-ubuntudebian)
      - [On Windows:](#on-windows)
    - [2. Copy configuration](#2-copy-configuration)
      - [On MacOS, Ubuntu/Debian](#on-macos-ubuntudebian)
      - [On Windows](#on-windows)
    - [3. Wait for plugins to install](#3-wait-for-plugins-to-install)
    - [DONE!](#done)
  - [Features](#features) - [Plugin List](#plugin-list) - [Colorscheme](#colorscheme) - [Editor](#editor) - [LSP's](#lsps) - [Extras](#extras)
  <!--toc:end-->

<img width="1214" alt="ScreenShot 2023-07-30 at 03 09 02@2x" src="https://github.com/iguii/neovim/assets/22847626/70c040f2-254a-4193-9ffd-420423ac057d">

My custom neovim configuration

## Remove old configuration

To remove old configuration delete your HOME/.config/nvim folder and plugins cache

```
$ rm ~/.config/nvim/
```

```
$ rm ~/.local/share/nvim/
```

---

## Usage

refer to the [usage]() documentation.

## Installation

### 1. Install neovim

#### On MacOS:

using [`homebrew`](https://brew.sh/index_es)

```
$ brew install neovim
```

#### On Ubuntu/Debian:

```
sudo apt-get update && sudo apt-get install neovim
```

#### On Windows:

using [`Windows Package Manager`](https://github.com/microsoft/winget-cli)

```
winget install --id=Neovim.Neovim  -e
```

### 2. Copy configuration

#### On MacOS, Ubuntu/Debian

```
cd ~/.config
git clone https://github.com/iguiIllanes/neovim.git nvim
nvim
```

#### On Windows

```
cd ~/AppData/Local/
git clone https://github.com/iguiIllanes/neovim.git nvim
nvim
```

### 3. Wait for plugins to install

### DONE!

---

## Features

### Plugin List

#### Colorscheme

| Name                                                                | Prefered |
| ------------------------------------------------------------------- | :------: |
| [vim-nightly-colors](https://github.com/bluz71/vim-nightfly-colors) |          |
| [vim-moonfly-colors](https://github.com/bluz71/vim-moonfly-colors)  |    \*    |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)         |          |
| [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)           |          |

#### Editor

| Name                                                                                     | Description                                                               |
| ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| [auto-session](https://github.com/rmagatti/auto-session)                                 | Session manager                                                           |
| [session-lens](https://github.com/rmagatti/session-lens)                                 | Telescope integration for auto-session                                    |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                   | Vim Notifications                                                         |
| [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)                     | HEX Color hightlighting                                                   |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                        | Add color hightlighting for TODO:, FIXME:, etc.                           |
| [vim-repeat](https://github.com/tpope/vim-repeat)                                        | Adds support for `.` command after plugin map                             |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                            | Tabpage integration                                                       |
| [nvim-bufdel](https://github.com/ojroques/nvim-bufdel)                                   | Buffer deletion                                                           |
| [nvim-sleuth](https://github.com/tpope/vim-sleuth)                                       | automatically adjust tabstop and shiftwidth                               |
| [navigator.nvim](https://github.com/numToStr/Navigator.nvim)                             | Navigation and tmux integration                                           |
| [vim-sorround](https://github.com/tpope/vim-surround)                                    | Surroundings and replacements                                             |
| [replaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister)                | Replace with register                                                     |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                               | Autoclosing for (), [], {}, etc                                           |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                        | Quick motions with 2 characters search                                    |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)                               | Smooth scrolling                                                          |
| [comment.nvim](https://github.com/numToStr/Comment.nvim)                                 | Comment lines with keymaps                                                |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)                              | File explorer                                                             |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)          | Indentation guides                                                        |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                    | List for showing diagnostics, quickfixes, etc.                            |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                             | Status line                                                               |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                              | Gitsigns for version control                                              |
| [git-blame.nvim](https://github.com/f-person/git-blame.nvim})                            | Git blame                                                                 |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)                                 | [Lazygit](https://github.com/kdheepak/lazygit.nvim) support inside neovim |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Fuzzy Finding in Telescope                                                |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                       | Fuzzy Finder for pretty much anything                                     |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                          | Autocompletions                                                           |
| [dressing.nvim](https://github.com/stevearc/dressing.nvim)                               | improves vim.ui default interfaces                                        |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)                      | vscode-like icons                                                         |

### LSP's

| Name                                                                         | Description                                      |
| ---------------------------------------------------------------------------- | ------------------------------------------------ |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                     | LSP, linter, formatter and debugger installer    |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                   | easy setup between LSP and neovim                |
| [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)           | LSP diagnostics, code actions and format on save |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | complementary plugin                             |
| [mason-null-ls.nvim](https://github.com/jay-babu/mason-null-ls.nvim)         | complementary plugin                             |
| [lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)                      | improve LSP experience                           |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)        | Adds better syntax hightlighting to neovim       |

### Extras

| Name                                                                 | Description            |
| -------------------------------------------------------------------- | ---------------------- |
| [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)          | dashboard              |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                       | snippets               |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | commonly used snippets |
| [copilot.nim](https://github.com/github/copilot.vim)                 | Github's Copilot       |
| [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)  | Flutter support        |
