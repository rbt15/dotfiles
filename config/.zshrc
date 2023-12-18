# If you come from bash you might have to change your $PATH.
export PATH=/Users/kirac.apaydin/.local/share/bob/nvim-bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH


ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# fnm
export PATH="/Users/kirac.apaydin/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

alias nvim-chad="NVIM_APPNAME=NvChad nvim"

alias nvim=nvim-chad
alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="--multi --reverse --border --inline-info --preview '([ -e {} ] && (head -20 {} || tree -C {} | head -20 ) || (echo {})) 2> /dev/null' --preview-window=right:40%:wrap"
export FZF_CTRL_R_OPTS="--no-preview"
export FZF_CTRL_T_OPTS="--bind 'ctrl-x:execute(subl -a {})'"

bindkey '^P' fzf-file-widget

# fzf + fd
export FZF_DEFAULT_COMMAND="(fd --hidden --exclude .git --follow || git ls-tree -r --name-only HEAD || (find . -path \"*/\.*\" -prune -o -type f -print -o -type l -print | sed s/^..//)) 2> /dev/null"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# fzf + git
alias gshow="git show \$(git log --pretty=oneline | fzf +m | awk '{print \$1}')"
alias gbranch="git checkout \$(git branch -vv | fzf +m | awk '{print \$1}' | sed \"s/.* //\")"
alias grebase="git rebase -i \$(git log --pretty=oneline | fzf +m | awk '{print \$1}')^"

# bun completions
[ -s "/Users/kirac.apaydin/.bun/_bun" ] && source "/Users/kirac.apaydin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/kirac.apaydin/Library/Python/3.9/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH

alias ls="lsd"
alias tree="lsd --tree"
alias aws-login="~/aws-login.sh"

klog() {
  service_name=$1
  environment_name=$2
  since_time=$3
  stern --template='{{ colorCyan .PodName}} {{with $d := .Message | tryParseJSON }} [{{ colorGreen (toTimestamp $d.timeMillis "2006-01-02 15:04:05" "Local") }}] [{{ levelColor $d.level }}] {{$d.message}}{{ else }} {{ .Message }}{{end}}{{"\n"}}' $service_name --since $since_time -c ^java\$ -n $environment_name
}
