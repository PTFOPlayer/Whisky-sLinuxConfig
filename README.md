# MyI3WM
This is a project of Window Manager that is to be available in a ready-to-use version, and requires only minimal configuration by the end user.
# Firstly you need a base
I am curently using Manjaro so everything will be done to fit with Manjaro and other Arch based distro. In the future i will think of making a version for debian based distros.

Manjaro:
```
https://manjaro.org/
```
# Instalation

You need to type only few commands.

Clone:
```
$ git clone https://github.com/PTFOPlayer/MyI3WM
```
Then you need to go to directory where you cloned repository.
```
$ cd /path/to/repository/MyI3WM
```
At the end you only need to launch instalation script
```
$ chmod +x install.sh && ./install.sh
```

Instalation is as automated as it can be, but there can still be thing that you need to do by yourself. 
!!errors related to non-existent folders are correct and are part of the installer operation!!

# current errors
!!
Currently there is a bug on the VM that causes transparency not to work, to fix this issue you need eddit file `~/.config/picom.conf` by commenting vsync line using `#`  
A second bug that sometimes causes the `install.sh` file to fail to copy the files, in which case you have to launch it again
!!


<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.linux.org/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/linux/linux-original.svg" alt="linux" width="40" height="40"/> </a> </p>
