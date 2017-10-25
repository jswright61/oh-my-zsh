function psg() {
    echo "USER               PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND"
    ps aux | grep -i "[${1[1]}]${1[2,-1]}"
}
function envg() {
    env | grep -i "[${1[1]}]${1[2,-1]}"
}

function pub-ip() {
    export PUBLIC_IP=`curl https://api.ipify.org`
    if [ $# -eq 0 ]; then
        echo "Public IP: $PUBLIC_IP"
    else
        if [[ $1 == "silent" ]]; then
        fi
    fi
}

function jdate() {
date -r $1 "+%Y-%m-%d %H:%M:%S (%a)"
}


# https://coderwall.com/p/kmchbw/zsh-display-commands-runtime-in-prompt
function preexec() {
  timer=${timer:-$SECONDS}
}
function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%}"
    unset timer
  fi
}


# mkdir, cd into it
function mkcd () {
    mkdir -p "$*"
    cd "$*"
}
function theme() {
    if [[ $ZSH_THEME  -eq 'random' ]]; then
        # https://stackoverflow.com/questions/2664740/extract-file-basename-without-path-and-extension-in-bash
        echo ${RANDOM_THEME##*/}
    else
        echo $ZSH_THEME
    fi
}

function r-theme() {
    # echo "$# args"
    if [ $# -eq 0 ]; then
        c_theme=$(theme)
    else
        c_theme="$1"
    fi
    # echo $c_theme
    if [[ -r "$HOME/.oh-my-zsh/themes/$c_theme" ]]; then
        mv "$HOME/.oh-my-zsh/themes/$c_theme" "$HOME/.oh-my-zsh/themes/jsw_rejected/$c_theme"
    else
        echo "Could not find theme: $c_theme"
        exit 101
    fi
}

function l-theme() {
    if [ $# -eq 0 ]; then
        c_theme=$(theme)
    else
        c_theme="$1"
    fi
    if [[ -r "$HOME/.oh-my-zsh/themes/$c_theme" ]]; then
        cp "$HOME/.oh-my-zsh/themes/$c_theme" "$HOME/.oh-my-zsh/themes/jsw_like/$c_theme"
    else
        echo "Could not find theme: $c_theme"
        exit 101
    fi
}

function m-theme() {
    if [ $# -eq 0 ]; then
        c_theme=$(theme)
    else
        c_theme="$1"
    fi
    if [[ -r "$HOME/.oh-my-zsh/themes/$c_theme" ]]; then
        if [[ -r "$HOME/.oh-my-zsh/custom/themes/$c_theme" ]]; then
            echo "There is already a custom version of theme $c_theme"
            exit 102
        else
            cp "$HOME/.oh-my-zsh/themes/$c_theme" "$HOME/.oh-my-zsh/custom/themes/$c_theme"
        fi
    else
        echo "Could not find theme: $c_theme"
        exit 101
    fi
}

function cfiles() {
     if [ $# -eq 0 ]; then
        cdir="."
    else
        cdir="$1"
    fi
    ls -Afqp $cdir | grep -v '/$' | wc -l
}

# for github figerprints
# ssh-keygen -l -E md5 -f ~/.ssh/my-github-key.pub
# https://gist.github.com/tuxfight3r/b92ad1450067bf4336ee


function fingerprints() {
    if [ $# -eq 0 ]; then
        keyfile="$HOME/Dropbox/Scott/authorized_keys"
    else
        keyfile="$1"
    fi

  while read line
    do ssh-keygen -l  -E MD5 -f /dev/stdin <<< $line
  done < "$keyfile"
}
