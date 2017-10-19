# fino.zsh-theme

# Use with a dark background and 256-color terminal!
# Meant for people with rbenv and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo "±" && return
  echo '○'
}

function box_name {
    if [ -f ~/.box-name ]; then
      cat ~/.box-name
    elif [ -f /etc/.box-name ]; then
      cat /etc/.box-name
    else
      echo ${SHORT_HOST:-$HOST}
    fi
}

export BOX_NAME=$(box_name)

local ruby_env=''
if which rvm-prompt &> /dev/null; then
  ruby_env=' ‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    ruby_env=' ‹$(rbenv version-name)›%{$reset_color%}'
  fi
fi

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local prompt_char='$(prompt_char)'

if [ $UID -eq 0 ]; then NCOLOR=196; else NCOLOR=040; fi

case $(box_name) in
  [Jj]err*)
    BOX_COLOR=021
    ;;
  [Mm]itc*)
    BOX_COLOR=011
    ;;
  [Rr]odne*)
    BOX_COLOR=153
    ;;
  [Kk]at|[Kk]athlee*)
    BOX_COLOR=013
    ;;
  *)
    BOX_COLOR=215
    ;;
esac

PROMPT="╭─%{$FG[$NCOLOR]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[$BOX_COLOR]%}$BOX_NAME%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%}${git_info} %{$FG[239]%}using%{$FG[243]%}${ruby_env}
╰─${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
