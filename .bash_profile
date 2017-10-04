
export NVM_DIR="/Users/kwang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Add Visual Studio Code (code)
export PATH="/Users/kwang/.nvm/versions/node/v5.2.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# Terminal cursor \w for full pwd, \W for current folder
export PS1="\u \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
