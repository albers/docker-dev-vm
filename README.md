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

If `vagrant up` fails with
```text
#<Vagrant::Errors::VBoxManageError:"There was an error while executing `VBoxManage`, a CLI used by Vagrant\nfor controlling VirtualBox. The command and stderr is shown below.\n\nCommand: [\"modifyvm\", \"321c31ec-0af1-401e-b88a-f65bfe9d2b46\", \"--accelerate3d
\", \"on\"]\n\nStderr: VBoxManage.exe: error: The graphics controller does not support the given feature\r\nVBoxManage.exe: error: Details: code VBOX_E_NOT_SUPPORTED (0x80bb0009), component GraphicsAdapterWrap, interface IGraphicsAdapter, callee IUnknown\r\nVBoxManage.exe: error: Context: \"SetFeature(GraphicsFeature_Acceleration3D, ValueUnion.f)\" at line 1113 of file VBoxManageModifyVM.cpp\r\n">
```
try to change the graphics controller to `VMSVGA` in VirtualBox and re-execute `vagrant up`.

## Result
- A virtual machine with graphical frontend is created and launched.
- No login is required. In case you need it, the user is _vagrant:vagrant_.
- This project directory is mounted at `~vagrant/docker-dev-vm`.
- Several Docker related repositories are checked out at `~vagrant/go/src/github.com/`.
- The [IntelliJ IDE](https://www.jetbrains.com/idea/) is installed.
  See [IDE setup for Docker development](https://github.com/moby/moby/blob/master/docs/contributing/set-up-ide.md) for configuration.
