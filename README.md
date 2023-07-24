# Neovim config

![ScreenShot 2023-07-24 at 03 38 18](https://github.com/iguiIllanes/neovim/assets/22847626/412c54b8-83db-456a-adb5-111eabc7f32b)
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

```
$ cd ~/.config
  git clone https://github.com/iguiIllanes/neovim.git nvim
  nvim
```

### 3. Wait for plugins to install

### DONE!
