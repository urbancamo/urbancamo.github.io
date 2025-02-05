# My Developer Blog

This will inevitably be a dumping ground of information. Previously I have used Atlassian Confluence to store this kind of information, but I really enjoy the convenience of using github to store markdown. Basically if I want to do everything from a command line there isn't an issue with this approach.

## Kubuntu 22.04 - Panasonic Toughbook Brightess Controls
The advice below about setting the grub bootline doesn't work any more.

I found `acpi_listen` returned nothing for the power buttons with the 
changes to the bootline, so I set the boot options back to default, and 
found the following work around:

/etc/acpi/panasonic-keyboard-backlight.sh :
```
#!/bin/sh

# this directory is a symlink on my machine:
BACKLIGHT_DIR=/sys/class/backlight/intel_backlight

test -d $BACKLIGHT_DIR || exit 0

MIN=0
MAX=$(cat $BACKLIGHT_DIR/max_brightness)
VAL=$(cat $BACKLIGHT_DIR/brightness)
INC=$((MAX/20))

if [ "$1" = down ]; then
        VAL=$((VAL-INC))
else
        VAL=$((VAL+INC))
fi

if [ "$VAL" -lt $MIN ]; then
        VAL=$MIN
elif [ "$VAL" -gt $MAX ]; then
        VAL=$MAX
fi

echo $VAL > $BACKLIGHT_DIR/brightness

```

/etc/acpi/events/panasonic-keyboard-backlight-down :
```
# /etc/acpi/events/panasonic-keyboard-backlight-down
# This is called when the user presses the key brightness 
# down button and calls /etc/acpi/panasonic-keyboard-backlight.sh for
# further processing.

event=video/brightnessdown BRTDN 00000087 00000000
action=/etc/acpi/panasonic-keyboard-backlight.sh down

```

/etc/acpi/events/panasonic-keyboard-backlight-up :
```
/etc/acpi/events/panasonic-keyboard-backlight-up
# /etc/acpi/events/panasonic-keyboard-backlight-up
# This is called when the user presses the key brightness 
# down button and calls /etc/acpi/panasonic-keyboard-backlight.sh for
# further processing.

event=video/brightnessup BRTUP 00000086 00000000
action=/etc/acpi/panasonic-keyboard-backlight.sh up

```
## DynamoDB
### Running DynamoDB in a local docker container

```
msw@gram:~sudo docker pull amazon/dynamodb-local
msw@gram:~sudo docker run -p 8000:8000 amazon/dynamdb-local
```
^ usage assumes `aws configure` has been run from the aws cli. 

## 06-JUL-2020 Modifying regolith preferences

For i3 configuration it would appear that you need to add overrides in `.config/regolith/Xresources`.

For example:

```
i3-wm.gaps.inner.size: 2
i3-wm.bar.font:	pango:JetBrains Mono Medium 11, Material Design Icons 11
```

current resources can be queried via `$ xrdb -query`.

The [regolith xresources page](https://regolith-linux.org/pt_br/docs/reference/xresources/) lists resources that can be overriden.

## 05-JUL-2020 Headphone & Speaker outputs on the CF-31

Edit: `/usr/share/pulseaudio/alsa-mixer/paths/analog-output-speaker.conf`

In the `analog-output-speaker.conf` file modify

```
[Element Headphone]
switch = off
volume = merge
override-map.1 = all
override-map.2 = all-left,all-right
```

then modify:

```
[Element Speaker]
required-any = any
switch = mute
volume = off
```

followed by a reboot.

If there is no sound output, run `pavucontrol` and ensure, on the `Output Devices` tab that the mute button isn't enabled.

## 03-JUL-2020 Changing the gnome font rendering scaling

This also affects Chrome which is good as fonts are rendering too big on my 1920x1200 external display
on the linux box:

```bash
$ gsettings set org.gnome.desktop.interface text-scaling-factor 0.9
```

## 01-JUL-2020 Brightness Control on the CF-31

I've installed the `regolith` distribution on the CF-31 to give it a go, and found that the brightness control no longer
worked, so I had to go through the pain of searching on the internet, and trying multiple options, before I got it working
again.

For the CF-31, I edited `/etc/default/grub` and added `acpi_backlight=native acpi_osi=` to the end of the `GRUB_CMDLINE_LINUX_DEFAULT` line:

    GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_backlight=native acpi_osi= "

then update grub:

```bash
     $ update-grub
```
and reboot.

To install the battery indicator in the i3 bar:
```bash
    $ apt search i3xrocks-
    $ sudo apt install i3xrocks-battery
    $ regolith-look refresh
```
## 28-JUN-2020 Emulating a 3 button mouse

The Toughbooks have a two button trackpad. It's not the best or most responsive trackpad, it could be twice the size, but it is a standard since the CF-30. With only two buttons cut-and-paste via the middle button standard doesn't worth without a tweak to `xinput` (there are various suggestions on how to do this, but these seems to be at the right level).

So the command that I need to run on the CF-30 is:
```bash
    $ xinput set-prop 11 "libinput Middle Emulation Enabled" 1
```
You can determine the right device number (11 in my case) by using the command:
```bash
    $ xinput --list
```

On the CF-30 this produces:
```bash
   msw@cf30:~$ xinput --list
   ⎡ Virtual core pointer                          id=2    [master pointer  (3)]
   ⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
   ⎜   ↳ PS/2 Generic Mouse                        id=11   [slave  pointer  (2)]
   ⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
   ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
   ↳ Power Button                              id=6    [slave  keyboard (3)]
   ↳ Video Bus                                 id=7    [slave  keyboard (3)]
   ↳ Power Button                              id=8    [slave  keyboard (3)]
   ↳ Fujitsu Component USB Touch Panel         id=9    [slave  keyboard (3)]
   ↳ AT Translated Set 2 keyboard              id=10   [slave  keyboard (3)]
   ↳ Panasonic Laptop Support                  id=12   [slave  keyboard (3)]
```
On the CF-31 Mk4 the command is slightly different:
```bash
   $ xinput set-prop 12 "Evdev Middle Button Emulation" 1
```
The next problem is where to put the command so it is run as the XSession is initiating. I firstly tried some different options in my $HOME directory, for example `.xsession`, `.xprofile`, `.Xsession`, '`.xsessionrc`. I added an `echo` in the command script so that I could see it being run.

When using the `sddm` display manager and the `i3` window manager it would appear none of the options I tried worked. Upon investigation I found the command script `/etc/X11/Xsession` creates three variables:

```bash
    USERXSESSION=$HOME/.xsession
    USERXSESSIONRC=$HOME/.xsessionrc
    ALTUSERXSESSION=$HOME/.Xsession
```

but then these are not subsequently used in the script!

In the end I added a system-wide xsession script in `/etc/X11/Xsession.d` called 76xinput-emulate-three-button-mouse:
```bash
    $ xinput set-prop 11 "libinput Middle Emulation Enabled" 1
    $ echo "$HOME/.xsession has run" > /home/msw/.xsession.log
```
The second debugging line then proved this script was being run upon reboot.

This kind of thing troubles me, as it means documentation that you read online about how to run a script at startup is probably not right. You may try four different techniques like I did, and none of them work. It's the benefit and curse of having lots of options in the Linux world!

## 27-JUN-2020

Had an interesting problem at work on Friday. We have a `go` program that connects to a server. When we started debugging the `http.get` call we found that a windows setting `https_proxy` was redirecting all requests to a proxy (the server was on the internal network but on a different sub-net). By unsetting the environment variable the `go` program was able to connect without issue.

## 25-JUN-2020
I continue to use the i3 window manager on both Toughbooks. The keyboard shortcuts, and the way in which you can utilise workspaces for applications makes a lot of sense and is working especially well with the limited real estate of the meagre 1024x768 resolution provided by the daylight readable screen.

I read an article on [one users' experience of switching windows](i3 – Switching Windows) with the various options available. At the bottom of the article a couple of utilities that they used to create animated screen captures were mentioned that are definitely worth investigating further, [peek](https://github.com/phw/peek) and [screenkey](https://www.thregr.org/~wavexx/software/screenkey/).

Editing markup with [ghostwriter](https://github.com/wereturtle/ghostwriter) is pretty seamless, I'm quite happy with the results at the moment!

## 22-JUN-2020

### GIT Access via SSH keys

Setting up the Toughbook CF-31 to access this blog git repository without the need for passwords.
```bash
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
```bash
     $ ssh -T git@github.io
     $ git clone ssh://git@github.com/urbancamo/urbancamo.github.io
```

Committing and pushing changes:
```bash
    $ git add .; git commit -m "Blog updates" . ; git push
```

### xrandr commands

Disabling the built in display when using an external monitor:

```bash
    $ xrandr --output LVDS-1 --off
```
When using both the HDMI and VGA output by default the screen left-to-right order is wrong.
```bash
    $ xrandr --output HDMI-1 --left-of VGA-1
```

### Touchscreen Calibration

If you need to re-calibrate the touchscreen run the command:
```bash
   $ xinput_calibrator --output-type xinput
```
Add the following lines to your `.xsession` file:

```   
   xinput set-int-prop "Fujitsu Component USB Touch Panel" "Evdev Axis Calibration" 32 592 15661 1049 15993
   xinput set-int-prop "Fujitsu Component USB Touch Panel" "Evdev Axes Swap" 8 0
```

### nmcli commands
The utility `nmci` provides the ability to control network connections from the command line. 

To see a list of wireless access points:

```
$ nmcli device wifi list
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
```bash
    $ nmcli connection up <SSID> --ask
```
this will prompt for the wifi password.

### Markdown Editor

`ghostwriter` seems pretty good and is easy to install thanks to it being in the ubuntu/debian repository.

Finally, [Jones the cat](https://avp.fandom.com/wiki/Jones_(cat)) (just to check that `ghostwriter` image import via drag-and-drop works OK):

![](jones.png)
