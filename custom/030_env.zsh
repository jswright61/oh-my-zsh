# source "$HOME/.rvm/scripts/rvm"

# use Safari to view man files
# https://apple.stackexchange.com/questions/14524/how-to-view-man-pages-in-a-web-browser
# https://jonathansblog.co.uk/open-man-pages-in-safari-or-other-browsers-in-osx
# export PAGER="col -b | open -a /Applications/Google\ Chrome.app -f"
# export PAGER="col -b | open -a /Applications/Safari.app -f"
# export PAGER=less # default
# http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html
# -a file exists -f REGULAR file exists -d DIRECTORY exists

if [[ -z "$SSH_CONNECTION" && -a /Applications/Safari.app ]]; then
  # export PAGER="col -b  | open -a /Applications/Safari.app -f"
else
  export PAGER=less
fi

setopt autocd

# export cdpath=( $HOME/repos/jswright61/ss_rails $HOME/dev/src/interact $HOME/commands $HOME/repos/jswright61 $HOME/dev )
# Preferred editor for local and remote sessions
if [[ -z "$SSH_CONNECTION" && -f /usr/local/bin/code_wait ]]; then
  export VISUAL="$VISUAL_CODE_EDITOR"
elif [[ -z "$SSH_CONNECTION" && -f /usr/local/bin/code_wait ]]; then
  export VISUAL="$VISUAL_CODE_EDITOR --new-window --wait "
else
  export VISUAL="$CODE_EDITOR"
fi
export EDITOR="$VISUAL"

if [ -d /usr/local/share/jsw_env ]; then
  for f in /usr/local/share/jsw_env/*; do source $f; done
fi

export JSW_ENV_LOADED=$(date +'%s')

export STRIPE_DO_NOT_MAIL="false"

eval "$(rbenv init -)"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
