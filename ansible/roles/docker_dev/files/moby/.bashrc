alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -AlF'
alias lh='ls -lhF'

alias build-docker='(cd /go/src/github.com/docker/docker && ./hack/make.sh binary install-binary)'

alias complete-docker='. /etc/bash_completion.d/docker'

__completion_debug() {
        echo $(date '+%H:%M:%S') " $@" >> ~/.bash-completion.log
}

__completion_dump() {
        __completion_debug "----------------------------------------------"
        __completion_debug "words  = '${words[*]}'"
        __completion_debug "cur    = '$cur' ($cword)"
        __completion_debug "prev   = '$prev'"
        __completion_debug "prev-1 = '${words[$cword-2]}'"
}
