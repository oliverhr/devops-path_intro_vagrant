# DevOps Path

## Vagrant

This is an example about how to use vagrant to mount a vanilla ubuntu server, that you can use as development environment.

By default Vagrant creates a network interface using NAT to communicate the host machine with the guest machine. On this example we also create an aditional private network, by doing this we get a more realistic interaction, and now is not necesary to forward ports.

Check the `Vagrant` file and notice how we can use the `shell` as provisioner, inline or calling a bash script providing the local path for that script wich vagrant will copy to the guest machine to a temporary path.

### Information

* Ubuntu LTS Xenial 16.04

Software to be installed:

* git
* curl
* zsh
* ohmyzh

#### Notes:

Normally the user for the guest machines created by vagrant was `vagrant` but seems that this change at least for this box in wich the user is `ubuntu`.

After run the `vagrant up` an error can be displayed at the very end of the setup:

	default: chsh: PAM: Authentication failure
 
Don't worry about it, the VM was created as normal and all the setup was completed successfully, you can check this by running `vagrant ssh` to get connected to the guest machine an you will see `➜  ~` as prompt.

### Requirements

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)

### References

* [Vagrant Documentation](https://www.vagrantup.com/docs/index.html)
* [Introduction to Vagrant](https://www.vagrantup.com/intro/index.html)
* [Vagrant Boxes](https://app.vagrantup.com/)

