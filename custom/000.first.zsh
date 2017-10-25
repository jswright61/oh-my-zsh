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
