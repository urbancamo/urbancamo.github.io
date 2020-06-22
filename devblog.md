### My Developer Blog

## 22-JUN-2020

Using ssh to access this blog git repository.

```
$ ssh-add ~/.ssh/id_rsa
```

The add the ssh-key `id_rsa.pub` contents to SSH keys listed on https://github.com/settings/keys

Added an alias for github.com in `~/.ssh/config`:
```
Host github.com
	Hostname ssh.github.com
	Port 443
```
 
Test the connection and then clone the repo:
```
ssh -T git@github.io
git clone ssh://git@github.com/urbancamo/urbancamo.github.io
```
