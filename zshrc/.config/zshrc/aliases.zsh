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
alias j='z'
alias jj='z -'

# fzf folder nav
alias f='cd "$(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf --preview "tree -C {}")"'
# run fzf cmd from history
alias fh='history 1 | cut -c 8- | fzf --tac --scheme=history | clipse -a'

# Confirm before these actions
# alias cp='cp -i'
# alias mv='mv -i'
alias rm='rm -i'

alias c='clear'
alias n='nvim'
alias t='tmux'
alias tn='(){tmux new -s $1}'

alias topcmd='history 1 | awk '\''{print $2}'\'' | sort | uniq -c | sort -nr | head -10'

# Move into ~/dotfiles for stow.
# mvdot $target $dest_name
mvdot() {
    if (( $# < 2 )); then
        echo "Error: This function requires at least two arguments."
        echo "Usage: mvdot target name"
        return 1
    fi

    echo "Moving '$1' to '$HOME/dotfiles/$2/.config/$1'"
    mkdir -p "$HOME/dotfiles/$2/.config/"
    mv "$1" -t "$HOME/dotfiles/$2/.config/"
    stow -d "$HOME/dotfiles/" "$2"
}

# alias notify='tput bel; terminal-notifier -title "Terminal" -message "Done with task! Exit status: $?" -sound "/System/Library/Sounds/Glass.aiff"' -activate com.apple.Terminal

# Exit in dir
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
