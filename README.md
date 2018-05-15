Dotfiles Configuration
======================

Manage your dotfiles
--------------------

Create an alias in .bash or .zsh 

```bash 
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

Create a bare git repository in the .dotfiles directory

```bash
cd
git init --bare $HOME/.dotfiles
config config --local status.showUntrackedFiles no
config remote add https://github.com/.... 
```
