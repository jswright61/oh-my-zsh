export DEVELOPMENT_BOX_CONFIG_FOUND="$0"

export RAILS_ENV=development
export RACK_ENV=development
export JSW_ENV=development
alias pg_start='brew services run postgresql'
alias pg_stop='brew services stop postgresql'
alias redis_start='brew services run redis'
alias redis_stop='brew services stop redis'
alias dev_svcs_start='pg_start && redis_start'
alias dev_svcs_stop='pg_stop && redis_stop'
