export DEVELOPMENT_BOX_CONFIG_FOUND="$0"

export RAILS_ENV=development
export RACK_ENV=development
export JSW_ENV=development
alias pg_start='pg_ctl -D /usr/local/var/postgres start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'
alias redis_start='redis-server /usr/local/etc/redis.conf --daemonize yes'
alias redis_stop='redis-cli shutdown'
alias dev_svcs_start='pg_start && redis_start'
alias dev_svcs_stop='pg_stop && redis_stop'
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl@1.1/lib/"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl)"
# export PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig"