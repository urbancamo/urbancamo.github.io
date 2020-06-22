# My Developer Blog

## 22-JUN-2020

Setting up the Toughbook CF-31 to access this blog git repository without the need for passwords.

```
$ ssh-add ~/.ssh/id_rsa
```

Then add the public ssh key signature file `id_rsa.pub` contents to your [github SSH keystore](https://github.com/settings/keys)

I added an alias for github.com in `~/.ssh/config` so that the right port and sub-domain are used:
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
