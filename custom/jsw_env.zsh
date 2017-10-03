# source "$HOME/.rvm/scripts/rvm"

export ORACLE_HOME=/opt/oracle
#export ORACLI_HOME=$ORACLE_HOME/instantclient_11_2
export ORACLI_HOME=$ORACLE_HOME/bin
export TNS_ADMIN=$ORACLI_HOME/network/admin

export RAILS_ENV=development
export RACK_ENV=development

# use Chrome to view man files
# https://apple.stackexchange.com/questions/14524/how-to-view-man-pages-in-a-web-browser
# https://jonathansblog.co.uk/open-man-pages-in-safari-or-other-browsers-in-osx
# export PAGER=less # default
# export PAGER="col -b  | open -a /Applications/Safari.app -f"
export PAGER="col -b | open -a /Applications/Google\ Chrome.app -f"
setopt autocd
export cdpath=( $HOME/repos/jswright61/ss_rails $HOME/dev/src/interact $HOME/commands $HOME/repos/jswright61 $HOME/dev )
