# docker-all-the-things

Dockerised commands for common dev tools. Uses a remote docker server to stop overloading local machine.

Prepend `$PATH` with `$HOME/git/docker-all-the-things` to ensure these commands take priority over any default `bin` locations

## Configuring remote docker server

1. `docker context create --docker host=ssh://root@$REMOTE_HOST remote && docker context use remote`
1. Copy `sshfs.sh` to the remote docker server home directory
1. Setup SSH keys and share between the two machines - https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2