# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(zsh-autosuggestions)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# some more ls aliases
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias ls='ls --color'
alias python='python3'

#source /home/samarth/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -Uz vcs_info # enable vcs_info
precmd () { vcs_info } # always load before displaying the prompt
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)' # git(main)
setopt prompt_subst

PS1="%B%n@%m in:%b %B%F{cyan}%1~%f%b%B\$vcs_info_msg_0_$%b "
# Variables
export ORACLE_HOME=/opt/oracle/instantclient_12_1
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export PATH=$ORACLE_HOME:$PATH

