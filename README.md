# Ansible XRDP GUI Project

## Why XRDP?
Because unencrypted VNC just does not cut it.  

**XRDP provides great:**
* RDP Protocol compatibility
* TLS encrytion
* Good performance
* Remote drives redirection, printing
* Direct X11 access, fast and less bugs than VNC

## Vagrant quick start
* Install Vagrant
* Install Virtualbox
* Install Vagrant plugin: `vagrant plugin install vagrant-vbguest`
* Run `vagrant up`

```bash
cd vagrant
vagrant plugin install vagrant-vbguest
vagrant up
```

## Installation
* Only new builds on CentOS 7 and RHEL 7 works deployed with `ansible-spacewalk` project
* Misc folder a script provides an installer: `run-ansible-xrdp-gui.sh`

## About MATE Desktop
* GNOME2 fork
* Clean and simple look and feel
* Perfect for work

## Custom Themes available
Added 2 backgrounds and reusing some built-in themes:
* Light1 (default)
* Dark1

## Known issues
* ~~Drive redirection does not work every time~~  
  * Workaround in: `/usr/libexec/xrdp/startwm-mate-session.sh` with `fusermount -u "$HOME/redirected_drives"`
* If `Printers` is enabled on `Local devices and resources` redirection it breaks the rest of the resources (Clipboard, Drive redirections). Please untick `Printers`

## Misc
* Running that script on any VM will pull and run this project installing XRDP and GUI
* Common packages installed:
  * atom - https://atom.io
  * terminator

## Recommended RDP connection settings on Windows 10
* Set username in advance
* Set screen to Fullscreen
* Set Color depth 24bit
* Enable remote audio
* Enable clipboard
* Click on `More...` button --> Enable drive redirection
* Optional, not tested: Enable Printers

![mstsc1](misc/mstsc1.png)![mstsc2](misc/mstsc2.png)  

![mstsc3](misc/mstsc3.png)  

![mstsc4](misc/mstsc4.png)  

![mstsc5](misc/mstsc5.png)

![mstsc5](misc/mstsc6.png)
