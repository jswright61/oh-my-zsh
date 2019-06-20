export JSW_PATH_READ$(date +%s)
export ORIG_PATH=$PATH
# :/usr/local/apache-maven-3.5.0/bin

# export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# export PATH=$PATH:/usr/local/opt/go/libexec/bin
# export GOPATH=$HOME/gocode
# export PATH=$PATH:$HOME/gocode/bin

PATH=$HOME/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
if [[ -d $HOME/go/bin/ ]];then 
    PATH=$PATH:$HOME/go/bin
fi
export PATH
