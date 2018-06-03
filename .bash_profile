
export NVM_DIR="/Users/kwang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Add Visual Studio Code (code)
export PATH="/Users/kwang/.nvm/versions/node/v5.2.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

alias b64='base64 -D <<<'
alias dcu='docker-compose up'
alias envhere='source .pyenv/bin/activate'
alias gb='git branch'
alias gch='git checkout'
alias gca='git commit --amend'
alias gc='git commit -am'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gpo='git push origin'
alias gs='git status'
gitclone(){
    git clone git@github.com:duolingo/"$1".git
}
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Terminal cursor \w for full pwd, \W for current folder
export PS1="\u \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
