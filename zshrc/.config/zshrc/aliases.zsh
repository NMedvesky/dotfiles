alias sudo='sudo '
alias list='/bin/ls --color'

alias ls='colorls -A --sd'
alias lk='colorls --sd'
alias tree='colorls --tree'

alias pwd='pwd && pwd | pbcopy'
alias cls='clear'
alias enc='openssl enc -e -aes-256-cbc -salt -pbkdf2'
alias dec='openssl enc -d -aes-256-cbc -pbkdf2'
alias starwars='nc -c telehack.com 23'
alias cow='fortune | cowsay | lolcat'
alias btop='bpytop'

# Replace cd
alias j='z'
alias jj='z -'
# alias f='zi'
alias cd='z'

# fzf folder nav
alias f='cd "$(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf --preview "tree -C {}")"'
# run fzf cmd from history
alias fh='eval `history 1 | cut -c 8- | fzf --tac --scheme=history`'

# Confirm before these actions
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias c='clear'
alias n='nvim'
alias t='tmux'
alias tn='(){tmux new -s $1}'

alias topcmd='history 1 | awk '\''{print $2}'\'' | sort | uniq -c | sort -nr | head -10'

alias kmonad='/Users/nikoijp/Installs/kmonad/.stack-work/install/aarch64-osx/a3f478de08f3dae494b33829d52b0d51534b59c3ddac640a2cb32be5c224cb4f/9.4.8/bin/kmonad'
alias notify='tput bel; terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?" -sound "/System/Library/Sounds/Glass.aiff"' -activate com.apple.Terminal

# Python Aliases
alias pip='pip3.9'
alias python='python3.9'
alias py='python3.9'
alias pypy='pypy3.9'

alias spottube='python3.9 ~/Desktop/Python\ Projects/PyTube/cli_spot_tube.py'
