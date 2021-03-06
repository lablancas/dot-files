# If you come from bash you might have to change your $PATH.
export PATH=/Users/lucas/Library/Python/3.6/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/lucas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export EDITOR='vim'

alias tma="tmux attach -t"
alias tmn="tmux new -s"
alias tml="tmux ls"
alias tmk="tmux kill-session -t"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

alias lrt="ls -lrt"
alias grepng="grep -Eo 'ng-[a-z]+=\"[^\"]+\"'"
alias cdd="cd /Users/lucas/Development/; cd"
alias hl='function _last() { history | grep -E "^ $1 +" | grep -v grep | tail -1 | sed -E "s/^ [0-9]+ +//" };_last'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias getenv="sed -E 's|$| \\\|' .env"

# git
alias gcm="git commit -m"
alias gca="git commit --amend"
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gco="git checkout"
alias gp="git pull"
alias gfa="git fetch --all"
alias gr='cd $(git rev-parse --show-cdup)'
alias cascade="git push && gco staging && git merge dev && git push && gco master && git merge staging && git push"

# source tree
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# npm
alias ni="npm i -S"
alias nu="npm un -S"
alias nid="npm i -D"
alias nud="npm un -D"

# project insiders
alias sshpia="ssh -i ~/.ssh/pi-linux-key.pem ec2-user@52.90.147.21"
alias sshpiw="ssh -i ~/.ssh/pi-linux-key.pem ec2-user@54.85.196.193"

alias sedr="replaceall.sh"

###-tns-completion-start-###
if [ -f /Users/lucas/.tnsrc ]; then
    source /Users/lucas/.tnsrc
fi
###-tns-completion-end-###
