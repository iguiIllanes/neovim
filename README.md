# Neovim config

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

## Installation

### 1. Install neovim

#### On MacOS:

using [`homebrew`](https://brew.sh/index_es)

```
$ brew install neovim
```

#### On Ubuntu/Debian:

```
$ sudo apt-get update && sudo apt-get install neovim
```

#### On Windows:

```
winget install --id=Neovim.Neovim  -e
```

### 2. Copy configuration

#### On MacOS, Ubuntu/Debian

```
$ cd ~/.config
  git clone https://github.com/iguiIllanes/neovim.git nvim
  nvim
```

#### On Windows

```
$ cd ~/AppData/Local/
  git clone https://github.com/iguiIllanes/neovim.git nvim
  nvim
```

### 3. Wait for plugins to install

### DONE!
