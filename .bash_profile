export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/bin/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/bin/git-prompt.sh

source ~/bin/azure-cli/az.completion

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# prompt
# I use Dracula theme for my terminal colours https://draculatheme.com
export PS1='🦄 \[\e[0;36m\]\[\e[0;36m\] \W\[\033[0;35m\]$(__git_ps1 " (%s)")\[\e[0m\]: '

# aliases
# weather and the moon
alias weather='curl -4 http://wttr.in/New_York'
alias moon='curl -4 http://wttr.in/Moon'

# editing and reloading bash profile
alias ebash='vim ~/.bash_profile'
alias rbash='source ~/.bash_profile'

# colours for `ls` command
alias ls='ls -G'
alias lsa='ls -la'
# bat rules
alias cat='bat'

# vim
alias vim="/usr/local/bin/vim"

# webapps
alias milk="open -na 'Google Chrome' --args '--app=https://www.rememberthemilk.com/app '"
alias webusb="open -a 'Google Chrome' --args '--disable-webusb-security'"

