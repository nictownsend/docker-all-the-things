# docker-all-the-things

Dockerised commands for common dev tools. Optionally uses a remote docker server to stop overloading local machine.

Prepend `$PATH` with `$HOME/git/docker-all-the-things` to ensure these commands take priority over any default `bin` locations

## Mac NFS

Inspired by - https://www.jeffgeerling.com/blog/2020/revisiting-docker-macs-performance-nfs-volumes

Mac volume mounts are frustratingly slow - which means things like WebPack and other compilers/bundlers do not like running in a containerized node.

Instead, a named volume mount with NFS can be used to speed things up significantly.

  - Edit `/etc/exports` to add `/Users/<username> -alldirs -mapall=501:20 localhost` (use `id` to check your uid and gid)
  - Create a named volume
    `docker volume create -o device=:/Users -o o=addr=host.docker.internal,rw -o type=nfs users`

## Configuring remote docker server

1. `docker context create --docker host=ssh://root@$REMOTE_HOST remote && docker context use remote`
1. Copy `sshfs.sh` to the remote docker server home directory
1. Setup SSH keys and share between the two machines - https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2
1. DOCKER_REMOTE=true; docker xyz