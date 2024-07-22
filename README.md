# dotfiles

## Requirements

Set zsh as your login shell:

```shell
chsh -s $(which zsh)
```

## Install

Clone onto your laptop:

```shell
git clone git@github.com:willian/dotfiles.git ~/dotfiles
```

Install [rcm](https://github.com/thoughtbot/rcm):

```shell
brew install rcm
```

Install the dotfiles:

```shell
env RCRC=$HOME/dotfiles/rcrc rcup
```

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future runs of `rcup`). [See example](https://github.com/willian/dotfiles/blob/main/rcrc).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard configuration options:

- Exclude the `README.md`, `README-ES.md` and `LICENSE` files, which are part of the `dotfiles` repository but do not need to be symlinked in.

## TMUX

Install tmux plugin manager:

```shell
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux-plugins/tpm
```

Then press `prefix` + <kbd>I</kbd> to fetch the plugins: `prefix` is `ctrl + a` by default.
