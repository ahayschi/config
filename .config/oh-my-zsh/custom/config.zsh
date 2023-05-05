# don't duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#808080'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/src/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
export PATH=$PATH:$GOPATH/src/k8s.io/kubernetes/third_party/etcd

export PATH=$PATH:~/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-18.0.1.1.jdk/Contents/Home
