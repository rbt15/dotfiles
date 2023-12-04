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

### Brew setup

Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install tap

```bash
brew tap oven-sh/bun
```

Install brew packages

```bash
xargs brew install < brew.txt

xargs brew install --cask < brew-cask.txt
```
