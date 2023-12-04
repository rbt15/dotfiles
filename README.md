### OMZ setup

First intall xcocde command line tools

```bash
xcode-select --install
```

Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install autosuggestions and syntax highlighting

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```
### Clone this repo

```bash
git clone https://github.com/rbt15/dotfiles
```

### Brew setup

Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc

source ~/.zshrc
```

Install tap

```bash
brew tap oven-sh/bun
```

Install brew packages

```bash
xargs brew install < dotfiles/brew.txt

xargs brew install --cask < dotfiles/brew-cask.txt
```

### Copy configs

```bash
cp dotfiles/.zshrc ~/

cp dotfiles/.gitconfig ~/

cp -R dotfiles/NvChad ~/.config/

cp -R dotfiles/wezterm ~/.config/
```

### TODO

- [ ] Add instructions for nvim
- [ ] Simplify brew install
- [ ] Convert all configs to symlinks
- [ ] Create a script to automate the process