# for github figerprints
# ssh-keygen -l -E md5 -f ~/.ssh/my-github-key.pub
# https://gist.github.com/tuxfight3r/b92ad1450067bf4336ee


function fingerprints() {
  while read line
    do ssh-keygen -l  -E MD5 -f /dev/stdin <<< $line
  done < $HOME/Dropbox/Scott/authorized_keys
}
