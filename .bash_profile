# git and prompt
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/bin/.git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/bin/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# pretty prompt
# I use base-16 'ocean' for my terminal colours http://chriskempson.com/projects/base16/
# if you use iTerm grab the colours file here https://github.com/christianbundy/spacegrey-iterm
export PS1='🦄 🔹\[\e[0;36m\]\[\e[0;36m\] \W\[\033[0;35m\]$(__git_ps1 " (%s)")\[\e[0m\]: '

# aliases
# weather and the moon
alias weather='curl -4 http://wttr.in/New_York'
alias moon='curl -4 http://wttr.in/Moon'

# editing and reloading bash profile
alias ebash='vim ~/.bash_profile'
alias rbash='. ~/.bash_profile'

# colours for `ls` command
# https://github.com/jonathf/gls
alias ls='gls --color=auto'
