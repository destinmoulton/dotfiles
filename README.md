# dotfiles

Linux dotfiles configured using stow.

# To install dotfiles

Install `stow`:
`yay -Sy stow`

Clone the repo into `~`:

```
cd ~
git clone git@github.com:destinmoulton/dotfiles.git
```

To install zsh dotfiles (as symlinks in your home dir):

```
cd ~/dotfiles
stow zsh
```
