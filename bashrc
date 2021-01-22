# --------------- Aliases ---------------

alias src_bash="source ~/.bash_profile"
alias ll="ls -alGF"
alias ..="cd .."
alias ...="cd ../../"
alias dotfiles="code ~/.dotfiles"


# --------------- Functions ---------------

# create folder and enter it
mcd () {
    mkdir "$1" && cd "$1"
}


# --------------- Exports ---------------

export GOPATH="~"
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOPATH:$GOBIN