# Neovim Configuration

This repository contains my personal Neovim / LazyVim configuration.

## Requirements

Before cloning this repository, you need:

1. Neovim installed 
2. Git installed

## Installation

1. Clone the repository to any location:
```
git clone git@github.com:Dexter9532/Config.git
```

2. Remove or rename any existing Neovim configuration:
```
mv ~/.config/nvim ~/.config/nvim_backup
```

3. Create a symbolic link so Neovim uses this repository as its configuration directory:
```
ln -s ~/path-to-your-dir ~/.config/nvim
```

4. Start Neovim:
```
nvim
```

LazyVim will automatically install all plugins on the first startup.

## Updating

Make changes directly in this repository and restart Neovim to load them.

## Backup

Your previous configuration is stored in:
```
~/.config/nvim_backup
```

You can delete it when you are sure everything works.

