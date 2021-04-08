## Vagrant Workshop

### Prerequisitos

* Virtualbox

#### Primeros Pasos
1. Instalar vagrant
    > brew install vagrant

    > apt-get install vagrant
1. Descargar box de debian 64 bits
    > vagrant box add debian/jessie64
1. Ejecutar box sin provisions
    > vagrant up --no-provision
    
    Si ejecutamos sin indicar el *--no-provision* ejecutaría las provisiones en el orden en el que están escritas en **_Vagrantfile_**
1. Para ejecutar un provision por ejemplo **init_repo**
    > vagrant up --provision-with init_repo
    

#### Ayuda
```
box             manages boxes: installation, removal, etc.
cap             checks and executes capability
destroy         stops and deletes all traces of the vagrant machine
docker-logs     outputs the logs from the Docker container
docker-run      run a one-off command in the context of a container
global-status   outputs status Vagrant environments for this user
halt            stops the vagrant machine
help            shows the help for a subcommand
init            initializes a new Vagrant environment by creating a Vagrantfile
list-commands   outputs all available Vagrant subcommands, even non-primary ones
login           log in to HashiCorp's Atlas
package         packages a running vagrant environment into a box
plugin          manages plugins: install, uninstall, update, etc.
port            displays information about guest port mappings
powershell      connects to machine via powershell remoting
provider        show provider for this environment
provision       provisions the vagrant machine
push            deploys code in this environment to a configured destination
rdp             connects to machine via RDP
reload          restarts vagrant machine, loads new Vagrantfile configuration
resume          resume a suspended vagrant machine
rsync           syncs rsync synced folders to remote machine
rsync-auto      syncs rsync synced folders automatically when files change
snapshot        manages snapshots: saving, restoring, etc.
ssh             connects to machine via SSH
ssh-config      outputs OpenSSH valid configuration to connect to the machine
status          outputs status of the vagrant machine
suspend         suspends the machine
up              starts and provisions the vagrant environment
version         prints current and latest Vagrant version
```
