# Dotfiles with chezmoi

## Install Chezmoi


##  Apply

**Option A: Quick Install (HTTPS)**
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply gaileyleseman
chsh -s $(which zsh)
```

**Option B: Full Access (SSH)**
```bash
chezmoi init --apply git@github.com:gaileyleseman/dotfiles.git
chsh -s $(which zsh)
```

## Daily Usage
```bash
chezmoi edit ~/.zshrc    # Edit a file
chezmoi diff             # Preview changes
chezmoi apply            # Apply changes
chezmoi add ~/.file      # Add new file
chezmoi update           # Pull + apply from repo
```