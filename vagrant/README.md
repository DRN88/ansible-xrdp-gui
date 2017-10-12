## Vagrant quick start on Windows + Virtualbox
* Install Vagrant
* Install Virtualbox
* Install Vagrant plugin: `vagrant plugin install vagrant-vbguest`
* Run `vagrant up`
* Run `mstsc /v:localhost:13389`
  * Username: `vagrant`
  * Password: `vagrant`

#### Build
```bash
cd vagrant
vagrant plugin install vagrant-vbguest
vagrant up
```

#### Destroy
```bash
vagrant halt -f
vagrant destroy -f
```
