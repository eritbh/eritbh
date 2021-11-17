# Completion settings
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '%B%U%d%u%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(@s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:]}={[:upper:]}' '+r:|[._-]=** r:|=**' '+'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=0 yes=0
zstyle ':completion:*' select-prompt '%SScroll to view more completions (%l, %p)%s'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/erin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# History management
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# Prompt configuration
setopt PROMPT_SUBST
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' -e 's/((/(/' -e 's/))/)/'
}
export PS1='%B%F{green}%m%f %F{blue}%n%f %F{green}%~%f%b$(parse_git_branch) %B%(?.%#.%F{magenta}%#%f)%b '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -CF'

# User program: add node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# User program: add yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# User program: local binaries
export PATH="$HOME/.local/bin:$PATH"
