# .dotfiles

# TODO
  - [ ] Create brewfile
  - [ ] setup install scripts for things (Spectical, Tmux (oh-my-zsh might take care of this?), pipenv, oh-my-zsh, etc)
  - [ ] Add documentation about stow?

# Tools

  - NPM
  - NVM
  - oh-my-zsh
  - pipenv
  - Homebrew
  - Tmux
  - tig
  - neovim
  - Spectacle
  - Karabiner-Elements
  - Github cli

### Setting up zsh-syntax-highlighting with oh-my-zsh

  - https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh


# Getting started from fresh
 - Install Brew
 - brew install github cli `brew install gh`
 - clone dotfiles
 - from dotfiles repo, `brew bundle`
 - stow dotfiles directories
 - install VimPlug, run vim and run PlugInstall
 - install lsp servers (this should happen automatically now)

## Some gotchas
 - might have to add something to zshrc to get nvm working... seems it has changed recently..?
 - zsh-syntax-highlighting may or may not need to be cloned to the zsh plugins directory for it to work.
