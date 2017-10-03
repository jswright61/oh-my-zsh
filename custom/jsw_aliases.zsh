# To remove an alias:  unalias alias_to_remove

alias gs="git status"

alias krd='Killall "Remote Desktop"'

alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff '
alias gco='git checkout '
alias gt='git tag '
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short '
alias gha='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short --all '
alias gl='git log --oneline'

alias be='bundle exec'
alias ts="date +%s"
alias subl="/usr/local/bin/subl -n "
# created function
# alias psg='ps aux | grep '

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias .gt='gittower .'
alias twrg='gittower '

alias venv="env | egrep 'DASHBOARD|OPTIMUS|ACCOUNTABLE|GATEKEEPERIZER|TREY|RACK_ENV|ENGAGE|PLATFORM_UI|SRMA|WORKFLOW_API|BIGSCREEN' | sort"
alias gfpd='git checkout develop && git fetch && git pull'

alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'

alias env_='env | grep _ENV'

alias 'envd'='export RAILS_ENV=development && export RACK_ENV=development'
alias 'envt'='export RAILS_ENV=test && export RACK_ENV=test'
alias 'envp'='export RAILS_ENV=production && export RACK_ENV=production'

eval $(thefuck --alias)

alias reload='source ~/.zshrc'

alias ll='ls -lha'

alias oh-my='subl ~/.oh-my-zsh'

alias gca='git add --all && git commit'
alias gbd='git branch -d '
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gmd='git merge develop'
alias epath='echo -e ${PATH//:/\\n}'
