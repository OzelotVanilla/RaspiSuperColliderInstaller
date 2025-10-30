Raspberry Pi SuperCollider Installer
====

This is a quick one-line install script project
 for a just-initialised Raspberry Pi with user name `pi`.
This project is originally used by Morimoto Lab.

This project install SuperCollider and other required software.
It will create a `install.sh`, `start.sh`, `start.scd`, and `stop.sh` in `/home/pi`.
`install.sh` is the one-line install script.
`start.sh` will launch SuperCollider and run `start.scd`.
`stop.sh` will stop all SuperCollider-related process.

To run the installer (make sure there is not a `install.sh` in your current directory):

```shell
wget "https://raw.githubusercontent.com/OzelotVanilla/RaspiSuperColliderInstaller/refs/heads/main/install.sh"; chmod +x "install.sh"; ./install.sh; 
```