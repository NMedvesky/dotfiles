# Replace ls with eza
alias list='/bin/ls --color'
alias ls='eza --group-directories-first --icons=always'
alias la='eza -a --group-directories-first --icons=always'
alias ll='eza -ls modified --icons=always'

# alias pwd='pwd && pwd | pbcopy'
alias pwdc='pwd && pwd | clipse -a'

alias cls='clear'

# Encrypt/Decrypt File
alias enc='openssl enc -e -aes-256-cbc -salt -pbkdf2'
alias dec='openssl enc -d -aes-256-cbc -pbkdf2'

alias starwars='nc -c telehack.com 23'
alias cow='fortune | cowsay | lolcat'

alias vpn='~/.config/zshrc/enable_vpn.sh'
alias wallpaper='~/.config/zshrc/wallpaper.sh'

# OneDrive
alias osync='onedrive -s --single-directory "school"'

# Zoxide
alias cd='z'

# fzf folder nav
alias f='cd "$(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf --preview "tree -C {}")"'
# run fzf cmd from history
alias fh='history 1 | cut -c 8- | fzf --tac --scheme=history | clipse -a'

alias n='nvim'
alias t='tmux'

alias topcmd='history 1 | awk '\''{print $2}'\'' | sort | uniq -c | sort -nr | head -10'
