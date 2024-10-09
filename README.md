# docker-dev-vm

A Ubuntu based virtual machine suitable for my personal Docker development habits.

Use at your own risk.

## Prerequisites

- [Oracle Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)

I've been using this on Windows 10 and 11.
 
## Build

1. Configure your GitHub identity, see [here](ansible/personal-settings/vars.yml.example).
2. Build the virtual machine with:
   ```shell
   vagrant up
   vagrant reload
   ``` 

## Result
- A virtual machine with graphical frontend is created and launched.
- No login is required. In case you need it, the user is _vagrant:vagrant_.
- This project directory is monunted at `~vagrant/docker-dev-vm`.
- Several Docker related repositories are checked out at `~vagrant/go/src/github.com/`.
- The [IntelliJ IDE](https://www.jetbrains.com/idea/) is installed.
  See [IDE setup for Docker development](https://github.com/moby/moby/blob/master/docs/contributing/set-up-ide.md) for configuration.
