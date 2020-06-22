# My Developer Blog

## 22-JUN-2020

### GIT Access via SSH keys

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

Committing and pushing changes:
```
msw@cf31:~/Projects/urbancamo.github.io$ git commit -m "Blog updates" . ; git push
```

### xrandr commands

Disabling the built in display when using an external monitor:

```
xrandr --output 
```
When using both the HDMI and VGA output by default the screen left-to-right order is wrong.
```
$ xrandr --output HDMI-1 --left-of VGA-1
```

### nmcli commands
The utility `nmci` provides the ability to control network connections from the command line. 


To see a list of wireless access points:

```
msw@cf31:~$ nmcli device wifi list
IN-USE  BSSID              SSID        MODE   CHAN  RATE        SIGNAL  BARS  SECURITY  
*       D4:CA:6D:84:F4:A2  wickens     Infra  9     270 Mbit/s  84      ▂▄▆█  WPA1 WPA2 
        A0:63:91:F0:34:21  WICKENS4    Infra  7     270 Mbit/s  57      ▂▄▆_  WPA2      
        1C:3B:F3:B5:D6:CE  wickens2    Infra  2     270 Mbit/s  47      ▂▄__  WPA2      
        38:A6:CE:DF:E7:00  SKY8C931    Infra  11    130 Mbit/s  47      ▂▄__  WPA2      
        A0:63:91:F0:34:20  WICKENS5    Infra  44    270 Mbit/s  44      ▂▄__  WPA2      
        62:45:B6:D3:49:D0  --          Infra  149   0 Mbit/s    40      ▂▄__  WEP       
        38:A6:CE:B7:5A:20  SKY8C931    Infra  6     130 Mbit/s  39      ▂▄__  WPA2      
        F4:6B:EF:44:9F:72  GummersHow  Infra  6     195 Mbit/s  19      ▂___  WPA2      

```

To connect to a particular access point:

```
nmcli connection up <SSID> --ask
```

this will prompt for the wifi password.

Finally, Jones the cat:

![](jones.png)