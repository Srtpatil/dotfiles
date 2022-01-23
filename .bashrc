# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
        echo "(${BRANCH}${STAT}) "
	else
		echo ""
	fi
}


# Import the colors
. "${HOME}/.cache/wal/colors.sh"
 font="JetBrains Mono:size=11"

export PS1='\[\e[0;1m\]\u\[\e[0;1m\]@\[\e[0;1m\]\h\[\e[0;1m\] in: \[\e[0;1;96m\]\W\[\e[0;1m\] `parse_git_branch`$ \[\e[0m\]'
export PATH=$PATH:$HOME/.local/bin

# some more ls aliases
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias ls='ls --color'


alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias dmenu_run="dmenu_run -fn '$font' -nb '$color0' -nf '$color15' -sb '$color1' -sf '$color15'"
alias dmenu="dmenu -fn '$font' -nb '$color0' -nf '$color15' -sb '$color1' -sf '$color15'"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
